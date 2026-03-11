# Iran's Digital Repression Infrastructure: Internet Shutdown, Cyber Capability, and Information Control

**Sources:** Multiple (Chatham House, Trellix, HRW, Guardian, Kentik, Amnesty, Media Line, Iran International)  
**Date compiled:** March 10, 2026  
**Type:** Background / consolidated analysis  

---

## Summary

These sources document Iran's digital repression infrastructure that was built and tested during the January-February 2026 protest crackdowns — and is now being deployed during the current war. Key findings:

- **Iran's internet shutdown (Jan 8–ongoing)** is the longest and most severe in the country's history
- Iran is implementing **permanent "whitelisting"** — only regime-vetted individuals get global internet access
- **Starlink use = espionage** under new law; death penalty for social media posts
- Iran's cyber offensive capability remains significant despite leadership targeting
- Mass arbitrary arrests, enforced disappearances, and torture documented

---

## The Internet Shutdown (January 2026–present)

### Guardian (Jan 17, 2026): Iran Plans Permanent Break from Global Internet

> "A confidential plan is under way to turn international internet access into a 'governmental privilege'... State media and government spokespersons have already signaled that this is a permanent shift, warning that unrestricted access will not return after 2026."

- **Whitelisting system:** Only Iranians with security clearance or who pass government checks will have access to filtered global internet
- All other Iranians limited to **National Information Network** — domestic, parallel internet cut off from the world
- Technology enabling whitelisting "probably exported by China" — high-capacity middleboxes that attach to network cables to monitor and manipulate traffic
- Former US State Dept official: "plausible and terrifying"

### Kentik (Jan 21, 2026): From Stealth Blackout to Whitelisting — Technical Analysis

> "For nearly two weeks, Iran has been enduring one of the most severe internet shutdowns in modern history."

**Key technical findings:**

- **IPv6 routes withdrawn** at 11:42 UTC on January 8, 2026 — early indicator
- **IPv4 traffic ceased** by 18:45 UTC same day — but routes remained online
- This is crucial: **keeping IPv4 routes online while blocking traffic enables whitelisting**
- "Had authorities withdrawn IPv4 routes, Iran would have become completely unreachable, as Egypt was in January 2011. By keeping IPv4 routes in circulation, Iranian authorities can selectively grant full internet access to specific users while denying it to the broader population."
- **State-affiliated media retain selective connectivity** — propaganda continues while citizens cut off
- Georgia Tech IODA: active probing drops to zero while routed IPv4 space remains at 98.14%

**Evolution of Iranian shutdown capability:**
- 2009: "They literally just pulled the plug without thinking... it basically threw the entire internet, and it really damaged a lot of things on their end as well"
- 2012: Established Supreme Council of Cyberspace; started planning national internet
- 2015: Researchers discovered Iran building domestically connected internet entirely partitioned from outside world
- 2022: Iran developed "internet curfews" — nightly traffic drops for mobile providers
- June 2025 (Twelve-Day War): "Stealth blackout" — traffic disrupted without withdrawing BGP routes
- January 2026: Full whitelisting system deployed

**On Starlink:**
> "Despite a recent Iranian law that would equate the use of Starlink with espionage, punishable by death, Iranian digital rights activists have been working for years to smuggle in terminals and build communication infrastructure."

---

## Mass Arbitrary Arrests and Enforced Disappearances

### HRW (Feb 24, 2026): Tsunami of Arbitrary Arrests, Enforced Disappearances

> "Evidence examined by Human Rights Watch shows that senior officials, Iran's security and intelligence agencies including the police (FARAJA), the Islamic Revolutionary Guard Corps (IRGC) and its intelligence organization, the Ministry of Intelligence, and prosecutorial and judicial officials have orchestrated a coordinated, brutal mass clampdown."

**Key findings:**

- **At least 11,000 summoned** by intelligence forces as of Jan 26 (IRGC statement)
- **10,538 referred for prosecution**; 8,843 indictments issued by Feb 17
- Detainees held in **unofficial detention facilities** — military barracks, warehouses, unregistered locations
- **Children among those detained** and facing death penalty
- **Torture documented:** severe beatings with batons; kicks and punches; sexual and gender-based violence; food deprivation; threats of execution; denial of medical care
- **Forced televised "confessions"** — 139 clips aired as of Feb 6, including children
- 19-year-old wrestling champion Saleh Mohammadi sentenced to death after summary proceedings lasting less than a month

**Prisoner quote:**
> "Do not forget the detainees... Be our voice, if you do not raise your voice, they will eliminate us all."

### Amnesty International (Jan 23, 2026): Militarized Clampdown to Hide Protest Massacres

> "Since 8-9 January 2026, when the Iranian authorities committed mass unlawful killings on an unprecedented scale to crush the popular uprising calling for an end to their repressive rule, they have waged a coordinated, militarized clampdown."

- **3,117 killed** according to Iran's Supreme Council of National Security (Jan 21)
- **At least 5,000 killed** according to UN Special Rapporteur on Iran Mai Sato (Jan 16)
- Security forces arrested protesters **receiving treatment in hospitals**
- Authorities extracted **extortionate payments** from families for bodies; forced families to sign pledges falsely declaring deceased were Basij members
- **Nighttime curfews** imposed; armed security patrols; checkpoints across cities
- Videos show **tank trucks**, armored personnel carriers, trucks mounted with heavy machine guns

---

## Iran's Cyber Capability (March 2026)

### Trellix Advanced Research Center (Mar 5, 2026): The Iranian Cyber Capability 2026

**Strategic context:**

> "The geopolitical landscape surrounding Iran has undergone a seismic shift between 2024 and March 2026... Following the coordinated US and Israeli strikes in late February 2026, Iran's deterrence and cyber capabilities have been heavily degraded, and its regional proxy network is fractured."

**Key assessment:**

> "Against this backdrop of active military actions, the operational status of various Iranian cyber actors remains partially obscured by the fog of war. Reporting on the status of specific leaders and affiliated individuals remains fragmented and, in some cases, unverified, leaving open questions about which operators remain active, which may have been removed, and whether certain groups have paused, rebranded, or reconstituted their operations under alternative structures."

**Active threat groups documented:**

1. **MuddyWater** — shifted from commodity RMM tools to custom malware; Rust-based payloads; targeting expanded to Egypt, Turkey, Azerbaijan, Jordan, Malaysia, Europe
2. **APT35 (Charming Kitten)** — C++ reimplementation of BellaCiao; React-based phishing kit intercepting MFA tokens in real time; December 2025 leak exposed internal records including overlap with Moses Staff
3. **APT42** — SpearSpecter campaign targeting senior government/defense officials via WhatsApp; TameCat PowerShell backdoor
4. **Parisite (Fox Kitten)** — resurrected Pay2Key ransomware; generated $4M+ through 50+ attacks in 4 months
5. **APT34 (OilRig)** — targeting Iraqi government; new Veaty and Spearal backdoors
6. **CyberAv3ngers** — IOCONTROL malware targeting fuel management systems in Israel/US; **unverified reports** of personnel killed/removed since conflict began
7. **Tortoiseshell** — IRGC-directed; multi-year campaign against Western aerospace/defense

**Tactical evolution:**
- Pervasive use of "living off the land" binaries (PowerShell, Cmd, Whoami, etc.)
- Custom backdoors incorporating AI-assisted development
- Command-and-control through legitimate cloud services (Firebase, Telegram, Discord)
- Growing use of Rust and Go for malware

**Conclusion:**

> "Iran's cyber apparatus is operating under significant strain. Ongoing military actions, leadership targeting, economic pressure, and the broader regional conflict have disrupted elements of Iran's traditional power structure... While cyber operations have historically been a core instrument of Iranian statecraft, the current environment suggests potential degradation, reorganization, or temporary pauses across parts of its threat ecosystem. At the same time, the absence of visible activity should not be interpreted as the absence of capability or intent."

---

## Information Warfare / Propaganda

### Media Line (Jan 27, 2026): How Iran Uses and Abuses Media for Psychological Warfare

**Iranian propaganda ecosystem (per Hadi Zonouzi, Lotus Communications):**

> "The regime's propaganda isn't just coming from official news channels; it's a full-spectrum operation. It's a coordinated ecosystem that includes state and semi-official media outlets that work in perfect sync. Then you have the so-called 'experts' and officials who appear on TV panels, all reinforcing the exact same talking points."

**Components:**
- State television
- Regime-aligned outlets (PressTV, Tasnim)
- Clerical figures delivering political sermons
- Semi-official Telegram channels
- English-language material for diaspora audiences

> "When a new term or a new narrative frame is introduced, it appears across all these channels simultaneously. The timing is too perfect to be a coincidence."

**On state media connectivity during blackout:**

> "Most of the Iranian broadcasting and media connected to the IRGC are active on Telegram and manage to keep publishing, like PressTV and Tasnim News Agency. They have different kinds of VPNs and tunnels that they are using to spread their propaganda... They don't want to connect people to the international internet. But they themselves, because they need propaganda to manage the situation, they find a way for themselves."

**Regime framing for international audiences:**

> "The main frame is that these are not legitimate protests, but foreign-backed riots orchestrated by the US and Israel. Protesters are not citizens with grievances; they are mercenaries or terrorists."

> "For the international community, the emphasis shifts to defending sovereignty against foreign plots. It sounds more political, less brutal."

---

## Relevance to Current War

This digital repression infrastructure — tested and refined during the January-February 2026 protests — is now operational during the war:

1. **Internet connectivity at 1%** (per Day 11 reporting) uses the whitelisting system documented here
2. **Death penalty for Starlink use** explains why external communication is so dangerous
3. **State media continuing** while population cut off explains information asymmetry
4. **Mass arrest infrastructure** being deployed against anyone filming strike damage
5. **Cyber capability degraded but not eliminated** — groups may reconstitute under alternative structures

---

## Sources

| Source | Date | Key content |
|---|---|---|
| Guardian | Jan 17, 2026 | Permanent break from global internet; whitelisting; China tech |
| Kentik | Jan 21, 2026 | Technical analysis of shutdown; BGP routes; stealth blackout evolution |
| Amnesty | Jan 23, 2026 | 3,117-5,000 killed; militarized clampdown; mass arrests |
| HRW | Feb 24, 2026 | 11,000+ detained; torture; forced confessions; children facing death penalty |
| Trellix | Mar 5, 2026 | Iranian cyber capability; active threat groups; operational strain |
| Media Line | Jan 27, 2026 | Propaganda ecosystem; synchronized messaging; regime framing |
