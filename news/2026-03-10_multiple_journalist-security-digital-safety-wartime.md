# Journalist Security and Digital Safety in Wartime Context

**Date:** 10 March 2026 (background compilation)  
**Sources:** Guardian, Freedom of Press Foundation, BlackBerry  
**Type:** Journalist safety and secure communications guidance

---

## Australian Journalists Targeted in US Immigration Protests

**Source: The Guardian - 11 June 2025**

### Incidents

- **ABC correspondent Lauren Day**: Teargassed Monday night; pepper pellets Tuesday
- **ABC camera operator** (freelancer, not Australian): Shot in chest with less-lethal bullet (wearing Kevlar vest, uninjured)
- **NYT journalist Livia Albeck-Ripka** (Australian): Hit below ribcage by munition; "intense, instant pain... I was really lucky"
- **Nine reporter Lauren Tomasi**: Shot with rubber bullet by LAPD officer who "turned and took aim" while she was reporting live
- Total: 4 journalists affected across ABC, Nine, NYT

### Context

- Protests against Trump administration immigration raids in Los Angeles
- Trump sent National Guard (condemned by Gov. Newsom as "purposefully inflammatory")
- LAPD says investigating "excessive force" — apparent reference to Tomasi incident
- Police chief "very concerned" about media being hit

### PM Albanese Response

- Called Tomasi footage "horrific"
- Raised concerns with US government

### LAPD Weapons

- Teargas, pepper pellets, pepper spray, flash bangs
- "Foam rounds" (condensed sponge projectiles) and bean bag rounds
- LAPD states they do not use "rubber bullets" — semantic distinction

### Lauren Day's Statement

"I've reported from the Middle East five times since 7 October and also from Myanmar during the civil war there, so I'm not unfamiliar with risk and conflict in my work, but I never expected the kinds of scenes we're witnessing in the United States in 2025."

---

## Secure Communications 2026 Predictions

**Source: BlackBerry Blog - January 2026**

### Key Predictions

1. **Quantum readiness becomes operational reality**
   - "Harvest-now, decrypt-later" attacks driving urgency
   - Governments mandating post-quantum cryptography migration plans
   - Any sensitive information needing 10+ year confidentiality at risk without quantum-safe protections

2. **Metadata exposure becomes primary vulnerability**
   - Unencrypted metadata reveals "who, when, and where" — provides adversary roadmap
   - Salt Typhoon attacks demonstrated metadata value for espionage
   - Organizations must implement "metadata shielding"

3. **Metadata control as first post-quantum defense**
   - Limiting "observable signals" reduces data available for harvest
   - Even if encryption breaks later, lack of metadata context makes exploitation harder

4. **Identity verification becomes mandatory**
   - AI deepfakes dismantling trust signals
   - "Proving who you are — cryptographically and continuously — will become as fundamental as encryption itself"
   - Systems must verify message came from "authorized individual on trusted device within compliant environment"

5. **Certified assurance replaces security claims**
   - Cyber-enabled espionage/fraud cost $1.03 trillion (2024)
   - "Secure" becomes certification status, not marketing claim
   - FIPS, NIAP, NATO certifications as procurement requirements

6. **Defense-grade security becomes baseline**
   - "Traditional distinction between 'enterprise-grade' and 'defense-grade' security will effectively vanish"
   - State-sponsored actors no longer distinguish government from corporate targets

7. **Control and federated awareness define resilience**
   - Shift toward sovereign-hosted communications
   - "Trust will not be rented from the cloud"

---

## Journalist Digital Security Checklist

**Source: Freedom of Press Foundation - December 2024 (updated December 2025)**

### Risk Assessment (5 Questions)

1. Assets: What am I protecting?
2. Adversaries: Who am I protecting from?
3. Adversary's assets: What might they be capable of?
4. Likelihood: How big is the risk based on who I am?
5. Your resources: What can I do to protect myself?

### Phone Security

- Turn off notifications for non-essential apps
- Review location settings for each app
- Revoke unnecessary camera/microphone access
- Delete unnecessary apps
- Set alphanumeric passcode longer than 6 digits
- Deploy full disk encryption (power down phone in risky situations)
- Disable Face ID/biometrics when covering protests (passcodes only)
- Enable Lockdown Mode (iPhone) or Advanced Protection (Android) if at elevated risk

### Secure Communications

- Use Signal (encrypts contents, retains little metadata)
- Lock down WhatsApp (turn off cloud backups, enable disappearing messages)
- Use Proton Mail for sensitive email (E2E encryption only works if all parties use Proton/PGP)
- Take advantage of E2E encryption in Zoom

### Document Safety

- Create "bright lines" around what stays offline vs. cloud
- Download and delete sensitive documents from cloud providers
- Encrypted storage options: Tresorit, VeraCrypt

### Computer Security

- Strong passphrase (stored in password manager)
- Update devices when prompted
- Enable full disk encryption (FileVault for Mac, BitLocker for Windows)
- Configure/disable cloud backups as appropriate
- Routine backups to external hard drive

### Online Privacy

- Delete old social media posts (Privacy Party extension, Cyd)
- Update privacy settings
- Google yourself and de-index problematic pages
- Use data broker opt-out list (Optery, DeleteMe)
- Consider Google Voice number for privacy

### Secure Browsing

- uBlock Origin extension (removes malicious ads)
- Privacy Badger extension (prevents tracking)
- Remove unnecessary browser extensions
- Use VPN (Mullvad, IVPN, Proton VPN, Surfshark recommended)
- Use Tor Browser for anonymous searches

### Account Security

- Password manager for unique, random, long passwords
- Enable MFA/2FA on all accounts
- Use security key (Yubico) plus authenticator app backup

### Secure Tiplines

- Determine support team for triage
- Select channels (Signal, WhatsApp, SecureDrop)
- Consider OnionShare for anonymous file receipt

---

## Relevance to Iran War Coverage

### Immediate Risks

- Journalists in conflict zones face kinetic threats
- Journalists covering protests in allied countries (US, Australia) face law enforcement violence
- Iranian journalists inside Iran face arrest, torture, death penalty for Starlink use

### Communications Security

- Salt Typhoon compromise of US telecoms means metadata exposure
- Quantum threats to long-term source confidentiality
- AI deepfakes could be used to impersonate sources or fabricate evidence

### Infrastructure Control

- Iran at 1% internet connectivity — journalists cut off
- UK/Australia online safety laws create takedown mechanisms
- VPN usage now monitored in UK

### Recommendations for War Coverage

1. Assume all unencrypted communications compromised
2. Use Signal with disappearing messages for source communications
3. Consider metadata exposure — not just content
4. Verify identity cryptographically (deepfake risk)
5. Store sensitive materials offline, encrypted
6. Plan for device seizure — full disk encryption, strong passphrase

---

## Archive Sources

- https://www.theguardian.com/us-news/2025/jun/11/number-of-australian-journalists-hit-by-us-law-enforcement-during-la-protests-climbs-to-four
- https://blogs.blackberry.com/en/2026/01/secure-communications-2026-predictions
- https://freedom.press/digisec/blog/journalists-digital-security-checklist/
