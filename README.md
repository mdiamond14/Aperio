<h1><a href="www.aperiofaucet.net">Aperio, an effortless water quality monitor</a></h1>

https://www.kickstarter.com/projects/545246334/844326656?token=9b80a16d

https://www.facebook.com/AperioFaucet

https://plus.google.com/102941707271742679735/posts

![Group Picture](https://raw.github.com/mdiamond14/Aperio/master/public_html/group.png)

<h2><i>What is Aperio?</i></h2>

How much do you know about the water that comes through your faucet? The water that you drink, the water that you use to clean, the water that you wash yourself with. Chances are, very little. This lack of transparency is alarming. That's where Aperio comes in.

Aperio - latin for "to reveal" - is a Spark Core powered "smart" faucet which actively monitors the concentration of contaminants that flow through it with a suite of sensors in real time, giving a constant indication of water quality. This data is then uploaded online via Wi-Fi.

Eliminate uncertainty. Regain confidence in the water you consume, and take comfort in the fact that you know exactly what you are putting in your body.


<h1>Design</h1>

<h2>Resources:</h2>
<ul>
<li>http://water.epa.gov/drink/</li>
<li>http://water.epa.gov/scitech/swguidance/standards/</li>
<li>http://water.epa.gov/scitech/swguidance/standards/criteria/</li>
<li>http://www.aquahealthproducts.com/understanding-ph-and-orp</li>
<li>http://www.who.int/water_sanitation_health/dwq/chemicals/en/ph.pdf</li>
</ul>

<h2>Sensors:</h2>
Where to buy
<ul>
<li>http://www.vernier.com/products/sensors/ specialized classroom sensors</li>
<li>http://www.adafruit.com/category/35 general arduino sensors</li>
<li>https://www.atlas-scientific.com/probes.html? specialized arduino probes</li>
<li>http://www.adafruit.com/product/828 flow sensor
</ul>
Potential Sensors
<ul>
<li>Salinity- 							easy and cheap to implement, but after evaluating the survey responses, it was found that salinity was a
								contaminant people were least worried about, so we decided to not put the sensor in. </li>
<li>pH- 									easy to implement, on the expensive side, usefulness is questionable for tap water. We found
								the pH meter was useless, as there is a very low probability that the pH of the tap water would reach 
								dangerous levels without it being easily noticed</li>
<li>Turbidity- 							easy and cheap to implement, was implemented using a photoresistor and an LED </li>
<li>Conductivity- 						difficult and expensive to implement, proved to be useless when compared to the ORP </li>
<li>Heavy Metals- 						difficult and expensive to implement, proved to be useless when compared to the ORP</li>
<li>Dissolved Oxygen- 					        not difficult to implement, expensive, not all that useful for residential applications.</li>
<li>Oxidation-Reduction Potential- 				easy to implement, expensive, but can be very useful for determining water quality. We attempted to obtain
this by contacting Atlas Scientific, but were not able to obtain it. </li>

<br>

<p> The deal with the Oxidation-Reduction Potential sensor really invokes the issue with obtaining the sensors. As our budget was very low, and these sensors were incredibly
expensive, we attempted to contact companies to obtain sensors. We could not convince the companies to give us the sensors, but did as much as we could with our budget by 
applying a turbidity sensor to our Aperio device in a inexpensive way, lining up a photoresistor with an LED. Through applying the turbidity sensor, we have proven that
Aperio can sense water quality and if we had a higher budget, which we will attempt to get through marketing, the other important sensors would be implemented as well </p>
</ul>

<h2>Construction</h2>
<p>At the beginning of our Aperio design process, we planned on creating a full faucet to incorporate sensors easily. 
Water would flow into the sensor chamber before valve, where the sensors detect quality and send data to Spark Core. The Flow meter would detect power-on parameters. 
A Flow based generator was an idea we threw around potentially including. First prototype was made with PVC. We were able to include a turbidity sensor and a flow meter.
We hope to use Kickstarter to gain the funds to implement more sensors, have a second prototype that will probably incorporate 3D printing and CAD, and hopefully reach
the mass production phase. We also want to apply the data from our survey to make our product designed to do well in the market, such as having Aperio Micro be our
flagship product as people wanted an add-on over a full faucet, and putting sensors in that people are most worried about. </p>
<h2>Marketing</h2>
<p>After obtaining the results from our call for beta testers and analyzing the responses to our survey (the fake beta), we have concluded that
there is a good general consensus that our product will be marketble. 
This can be seen from our large email list as well as from the fact that our survey results indicate that our beta testers truly are worried about the contaminants 
in their water.

<p> Survey- https://docs.google.com/forms/d/1bu4aKSEeHWmIrFf-Z65YH9c0vk1O8weD6l1mEfvcaDo/viewform?c=0&w=1 </p>

<p> Survey Responses- https://docs.google.com/spreadsheets/d/1pLBosk78gql883Fm7eWnhymY8N-whglf8S5V-dkugWc/edit?usp=sharing </p>

Due to this, we will continue to advocate for our product through the aperio website, facebook, and google plus. We will also attempt to get in touch with trade shows
and post extensively on blogs to get our name out there.

Through the utilization of Kickstarter and networking through services such as Linkedin, we will raise money to initialize our second prototype/mass production phase. 

Later, the distribution phase will be planned, but as of right now getting the product out there and raising money is the priority. </p>
<h2>Design Goals</h2>
<p> Minimize cost and maximise ease of use. Many people have indicated that they will not buy the product at an expensive price as Aperio does not have much traction in the 
market, so making the product as cost-efficient as possible will make it as cheap as possible. No one will purchase if it is too much hassle/expense for too little gain. 
Choose which sensors are necessary based upon popular opinion and eliminate those that aren't to save real estate and reduce cost. 
We need to make a device that people will actually want to buy. We would like to make our product exceptionally aesthetically pleasing, and make Aperio as effective
as possible at monitoring water quality! </p>
