class KidsAppConfig {
  final String name;
  final String description;
  final bool useDetailedPolicy;

  const KidsAppConfig({
    required this.name,
    required this.description,
    this.useDetailedPolicy = false,
  });
}

const Map<String, KidsAppConfig> kKidsAppConfigs = {
  'chaiempire': KidsAppConfig(
    name: 'Chai Empire',
    description:
        'an educational simulation game where kids learn about management and creativity through a fun tea-business theme.',
  ),
  'gridzen': KidsAppConfig(
    name: 'GridZen',
    description:
        'a logic and puzzle game designed to improve spatial reasoning and problem-solving skills for children.',
  ),
  'saathi': KidsAppConfig(
    name: 'Saathi',
    description:
        'a companion app for kids focusing on daily habits, emotional well-being, and social learning.',
  ),
  'wordshakti': KidsAppConfig(
    name: 'WordShakti',
    description:
        'a vocabulary-building game that helps children master new words and language skills in an engaging way.',
  ),
  'cleanspace': KidsAppConfig(
    name: 'Clean Space',
    description:
        'an interactive game that teaches children about organization, cleanliness, and environmental responsibility.',
    useDetailedPolicy: true,
  ),
  'vitacore': KidsAppConfig(
    name: 'VitaCore',
    description:
        'a health and wellness app for kids, promoting healthy habits, nutrition awareness, and active play.',
    useDetailedPolicy: true,
  ),
  'aksharakids': KidsAppConfig(
    name: 'Akshara Kids',
    description:
        'an educational application designed to help children learn and practice numbers and letters through interactive play.',
  ),
};
