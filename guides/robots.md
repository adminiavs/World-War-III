# Robots, autonomous systems, and AI in the Iran war

What the repo says about the potential use of robots, autonomous weapons, drones, and AI in this war — from uncrewed platforms and mine-clearing to AI-enabled targeting and the law of war.

Last updated: 15 March 2026 (Day 16)

---

## 1. Drones and uncrewed systems

### Iranian drones and asymmetric cost

- **Iran’s drones** are central to the war. The repo repeatedly describes **asymmetric warfare**: cheap drones and missiles (on the order of $1,000–$50,000 per unit) against billion-dollar carriers, $13M THAAD interceptors, and $300M radars. Jiang and others predicted this would make the war economically unwinnable for the US; by Day 14–16 it is cited as confirmed — THAAD radar destroyed, KC-135 lost, Gulf allies “running out of interceptors,” $5.6B in munitions in the first two days.
- **Volume and swarms:** Iran is described as firing hundreds of drones (e.g. Day 1: 209 drones; Day 2: 332 drones) and using “coordinated swarms” that “complicate interception” because they fly lower, slower, and in numbers that overwhelm defences. Drones are used alongside ballistic and cruise missiles across multiple fronts (Israel, Qatar, Bahrain, Kuwait, UAE).
- **Cost asymmetry (UK F-35 vs Iranian drones):** One transcript (drone-cost-asymmetry) notes an RAF F-35 shooting down two Iranian drones after four hours airborne — flight cost alone over $132,000 (F-35 ~$33,000/hour) versus cheap one-way drones. The point: “you do need people on the ground to shape the outcomes”; “there are limits to what air power can do.”
- **Supply lines and drones:** Jiang is quoted as saying supply lines through mountains can be shot down by “a random guy with a rocket launcher or a drone — exactly what Afghans did to Soviets.” So drones are framed as a way to make sustained ground supply impossible.

### US uncrewed and “robot-adjacent” systems

- **Lucas drone:** Al Jazeera DC (Balance of Power, Day 14) describes the **Lucas** — a US “low-cost unmanned combat attack system,” a kamikaze drone modeled on the Iranian Shahed, ~$35,000 each, used for long-range impact. A US official is quoted: “We captured it, pulled the guts out, sent it back to America, put a little ‘Made in America’ on it, brought it back here, and we’re shooting it at the Iranians.” So the US is explicitly using an Iranian-style one-way drone as a key tool.
- **Other standoff systems:** The same segment lists Army precision-strike missile (500+ km, ~$1.6M), F-35 (including first air-to-air kill over Iran), new Tomahawk variant (~$2M), plus 50,000 troops, 200 fighter jets, two carriers, B-1/B-2/B-52. The framing is “Iran as testing ground” for new hardware and software.
- **Mark Wales (ex-SAS):** He says drones are “complimentary to people,” not a replacement; “what you’re seeing now in Iran — there are limits to what air power can do.” He also says **robotics could be a “game changer”** — e.g. “autonomous partners,” and a Ukrainian rescue drone operating 30 km — and that the US has “capabilities really far advanced” that it keeps “in the locker.” So the repo treats ground robotics as a future or withheld option, not yet the main story in Iran.

### Humanoid robots in combat (Ukraine)

- **Phantom MK-1 (UkraNews, 13 Mar 2026):** The American company **Foundation** transferred two **Phantom MK-1 humanoid robots** to Ukraine (February 2026) for testing in combat conditions. Ukraine is described as a “key platform for testing new military technologies in real conditions of modern warfare.” The robots do **not** hold weapons yet. Planned uses: delivery of equipment, reconnaissance in closed spaces (shelters, bunkers), and working with human-built infrastructure. Foundation’s stated **future goal**: the robot should be able to use any weapon used by a person. Specs: ~4 mph, payload up to 20 kg, weight 79 kg, height 175 cm. Limits: expensive, heavy, battery-dependent, can lose balance or fail. **Cybersecurity risk:** if adversaries gain access to software or comms, the system could be used against its operators. Experts (via Time): AI can make mistakes, show bias, or exceed limits in complex environments; in the US the principle is that **the final decision on use of force should be made by a person**. Phantom MK-2 is planned for April (better protection, water resistance, up to 80 kg payload). This is **Ukraine**, not Iran, but it shows humanoid robots entering real combat testing in the same timeframe as the Iran war, with a stated path toward weaponization.

### Maritime: mines and mine-clearing

- **Iran’s mines:** Multiple sources state Iran has **5,000+ naval mines** (domestic, Russian, Chinese; acoustic, magnetic, pressure). If Iran “resorts to mining,” clearing is “very time-consuming”; “Iran’s potential to mine the area remains a serious threat that would cause international economic chaos.”
- **US mine-clearing:** The US “doesn’t have many minesweepers; they retired most of them before this conflict started. **They are now relying on robots, helicopters, and potentially help from allies.**” So **robots are explicitly mentioned as part of the mine-clearing response** — a concrete “robots in war” use in the repo. The analyst’s point is that the US had not planned for this and is short of both traditional minesweepers and the capacity to clear mines at scale.

---

## 2. AI-enabled targeting and “autonomous” decisions

### Lavender, Gospel, and LLM-based target generation

- **Listening Post (Al Jazeera):** Matt Mahmoodi (Amnesty Tech, Cambridge) describes a “new form of warfare” emerging from Gaza and now in Iran: **target acquisition systems like Lavender and Gospel** that use “large tranches of information (social media data, government databases)” to decide “whether someone is a combatant.” In Iran, he says, **a large language model (LLM)** is used in a **“chat-prompt-based interface”** so the military can “put in a human-speak prompt that asks for particular targets to be generated with particular characteristics.” So the repo presents **LLM-generated target lists** as a current feature of this war.
- **Scale and vetting:** Lavender is described as producing lists of **40,000 names**; the question “who vetted these names?” is raised. Targeting is “probabilistic” and “relational” — e.g. connection on social media to someone who “said something or have a particular affiliation” can “render you a threat.” The criticism is that this is **“AI washing”** of the idea of a legitimate target: “simply saying because the system said these targets are correct that makes it a legitimate target” is framed as **a violation of international law** because “individuals in the chain of command have not actively been involved in vetting and understanding who they’re targeting and why.”

### Manab school and civilian harm

- The **Manab school bombing** (Minab; at least 165 schoolgirls and staff killed) is cited across the repo as the emblematic failure of this kind of targeting. WaPo is quoted: the school was on the target list “possibly mistaken for a military site.” Another analyst (k_JU8wVfwJ4) is cited: four targets, two empty warehouses, one hospital, one school — **“50% of our targets were illegal under the law of war”**; Hegseth “closed down the units responsible for screening targets” for civilian nature. So the repo ties **AI/LLM-assisted target lists to unlawful attacks and the removal of human screening**.

### Claude, Palantir, and the Pentagon

- **README and day updates:** The administration’s **AI tools (Palantir/Claude)** are described as having **identified the school as a target**; **Claude, embedded in Palantir’s Maven Smart System**, is used for “real-time targeting, prioritization, and location coordinates.” Over **1,000 targets in the first 24 hours**, 2,000+ in the first week; Pentagon officials quoted: “no stupid rules of engagement.”
- **Anthropic and autonomous weapons:** Anthropic refused Pentagon demands to allow use for **“autonomous weapons or mass surveillance”**; Hegseth threatened the **Defense Production Act** to compel compliance and designated Anthropic a “supply-chain risk” with a six-month phase-out. The military is still using Claude because commanders say they “cannot suddenly discontinue it without compromising operations.” **Anthropic is now suing the government** after refusing to allow Claude for autonomous weapons. So the repo presents **Claude as a dual-use tool**: used for targeting in Iran, while the company publicly resists “fully autonomous” weapons and faces legal and political pressure.
- **Listening Post again:** “Oversight” is described as “incredibly permissive” — e.g. someone looking at a list “for 15 seconds, 2 minutes” and deeming that sufficient without “interrogating how the particular large language model arrived at the list.” The **Stop Killer Robots Coalition** and calls for an **internationally binding instrument on autonomous weapon systems** are cited; the claim is there is “no way of ensuring any oversight, no accountability,” and companies “skirt all of that whilst deriving most of the profit.” **“Fog of war, which was already thick, is being made thicker by AI.”**

### Scientists, tech, and war

- **War-science-nukes transcript:** A speaker (Defense Innovation Board, Vietnam-era background) says **“there is no war that is won without the exploitation of science and technology at its center”** and that strength of nations is “how clever you are with computing or calculations or strategies.” So the repo ties **computing and automation** to military success in general, without naming specific robots in Iran.
- **Gulf AI and datacentres:** UAE and Gulf AI ambitions (datacentres) are said to be in jeopardy; AWS data centres have been hit; Iran has warned that infrastructure linked to Google, Microsoft, **Palantir**, Nvidia, Oracle could become targets. So **Palantir** appears both as a provider of targeting (Maven + Claude) and as potential infrastructure at risk in theatre.

---

## 3. Autonomous weapons and the law of war

- **Definitional grey zone:** “Autonomous” in the repo ranges from (a) **human-supervised AI that generates target lists** (current use of Claude/Palantir/Lavender-style systems) to (b) **weapons that fire or select targets without a human in the loop** (what Anthropic says it refuses). The criticism is that **supervision is so thin** (e.g. 15-second review of 40,000 names) that the line between “AI-assisted” and “autonomous” is blurred in practice.
- **Accountability:** “With the insertion of AI we have a complete muddying up of who made the decision to kill. Was it the system? The designer? The person who operated the interface?” International humanitarian law requires a **legitimate target** and a **chain of command with accountability**; the claim in the repo is that AI “makes it difficult to determine whether some attacks were deliberate, intelligence failures, or errors in AI itself” and can allow militaries to “evade accountability — just say the machine got it wrong.”
- **Law of war and unlawful orders:** Mark Wales (ex-SAS) says soldiers are trained that “you don’t have to follow unlawful orders” and can refuse to “blow that school up” if it’s not a legitimate target — “in practice not always that easy.” The repo uses that to contrast with **algorithmic target lists** where the “human component” may be reduced to clicking a prompt or approving a list without meaningful vetting.

---

## 4. Summary table: where robots and AI appear

| Topic | Where in repo | Gist |
|-------|----------------|------|
| Iranian drones / swarms | README, day updates, analyst transcripts, Prof. Jiang, Listening Post | Cheap drones vs expensive defences; volume and swarms; asymmetric cost; limits of air power alone |
| Lucas (US kamikaze drone) | Al Jazeera DC Balance of Power (Day 14) | US copy of Shahed-style drone, ~$35k, “testing ground” in Iran |
| Mine-clearing robots | Analyst (iaTs6LxZmlo) | US short of minesweepers; “relying on **robots**, helicopters, and allies” to clear mines |
| Robotics as “game changer” | Mark Wales (Straight Talk) | Drones complementary to people; robotics/autonomous partners possible “game changer”; US has advanced capabilities “in the locker” |
| Lavender / Gospel / LLM targeting | Listening Post, day 16, README | Gaza-style systems + LLM prompt interface in Iran; 40,000-name lists; “AI washing” of lawful targeting |
| Claude / Palantir in Iran | README, day 12, Lawfare, Listening Post | Maven + Claude for targeting; 1,000+ targets first 24h; Anthropic resists autonomous weapons; sued; DPA threat |
| Manab school | Multiple day updates, Listening Post, analyst k_JU8wVfwJ4 | School on target list; 165+ dead; 50% targets “illegal”; Hegseth closed target-screening units |
| Stop Killer Robots / binding instrument | Listening Post | Call for international treaty on autonomous weapons; no oversight or accountability under current use |
| Science and computing in war | War-science-nukes transcript | “No war won without science and technology”; computing and strategy as strength |
| Phantom MK-1 humanoid (Ukraine) | UkraNews (13 Mar 2026), Time | Foundation sent two humanoid robots to Ukraine for front-line testing; no weapons yet; future goal = use any human weapon; recon, logistics; MK-2 April (80 kg payload); cybersecurity and “human in the loop” cited |

---

## 5. Implications for “robots in war”

- **Drones** are already central — both Iranian (swarms, cost asymmetry) and US (Lucas, F-35 vs drones). The repo does **not** treat the war as “robots vs humans” but as **drones and standoff weapons** still dependent on people and strategy; Wales and others stress “limits to what air power can do” and the need for ground presence.
- **Robots** in the literal sense (uncrewed ground or maritime systems) appear in **mine-clearing** (US in Gulf) and, in a separate theatre, **humanoid testing in Ukraine**: Foundation’s Phantom MK-1 is in combat testing for recon and logistics, with a stated future goal of weaponization (“use any weapon used by a person”). So ground robotics are in use or in test in active conflicts, not yet as the main combatant in Iran.
- **AI and autonomy** are in use for **targeting**: LLM-generated lists, Lavender/Gospel-style systems, and Claude/Palantir in Maven. The repo consistently frames this as **increasing risk to civilians**, **eroding accountability**, and **thickening the fog of war**, while companies profit and resist only the narrow category of “fully autonomous” weapons. So the “robot” that matters most in the repo’s narrative is **the automated target list** — not a physical robot, but a decision system that can lead to strikes on schools and hospitals when human review is nominal.
