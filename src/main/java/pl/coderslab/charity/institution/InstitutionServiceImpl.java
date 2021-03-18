package pl.coderslab.charity.institution;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.donation.DonationService;

import java.util.List;

@Service
@AllArgsConstructor
public class InstitutionServiceImpl implements InstitutionService {
    private final InstitutionRepository institutionRepository;
    private final DonationService donationService;

    @Override
    public Institution findById(Long id) {
        return institutionRepository.findById(id)
                .orElseThrow(() ->
                        new IllegalArgumentException(String.format("Institution with id=%s does not exists", id))
                );
    }

    @Override
    public void delete(Institution institution) {
        donationService.findAllByInstitution(institution).forEach(donation -> {
                    donation.setInstitution(null);
                    donationService.save(donation);
                });

        institutionRepository.delete(institution);
    }

    @Override
    public void save(Institution institution) {
        institutionRepository.save(institution);
    }

    @Override
    public List<Institution> findAll() {
        return institutionRepository.findAll();
    }


}
