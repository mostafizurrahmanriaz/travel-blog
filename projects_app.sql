-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 29, 2025 at 03:06 PM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projects_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `bio`, `photo`) VALUES
(1, 'Mr. Harshed', 'A passionate travel writer who documents real-world journeys, local cultures, and hidden destinations. Focused on practical travel tips, authentic experiences, and inspiring readers to explore beyond the usual routes.', 'harshed.jpeg'),
(2, 'Mr. David', 'A travel blogger dedicated to sharing honest reviews, itineraries, and travel insights. Combines personal experiences with useful guidance to help readers travel confidently and responsibly.', 'david.jpeg'),
(3, 'Willian', 'An explorer at heart, sharing stories about travel, food, and culture from different regions. Writes experience-based content to help travelers plan smarter trips and understand destinations more deeply.', 'willian.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content_1` text NOT NULL,
  `content_2` text NOT NULL,
  `featured_image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content_1`, `content_2`, `featured_image`, `category`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'Serengeti National Park, Tanzania', 'Serengeti National Park is one of Africa’s most famous wildlife destinations, spanning vast savannas and rolling plains. It is home to lions, elephants, giraffes, cheetahs, and countless other species. The park is renowned for its annual Great Migration, where millions of wildebeest, zebras, and gazelles move in search of fresh grazing. It offers one of the most breathtaking natural spectacles on Earth. Safari enthusiasts and photographers flock here to capture wildlife in their natural habitat. The park includes diverse ecosystems, from grasslands to riverine forests. Birdwatchers can spot over 500 species, including rare raptors. The Serengeti ecosystem supports both predator and prey in a balanced natural environment. Visitors can stay in luxury lodges or campsites for immersive experiences. Guided tours provide insight into conservation and local Maasai culture.', 'The annual Great Migration is a dramatic and unforgettable sight, involving predators and prey in a continuous cycle. Sunrise and sunset over the savanna create magical photographic opportunities. Visitors can explore the park through guided safaris in open 4x4 vehicles. The park also has several scenic rivers and waterholes that attract diverse wildlife. Conservation programs protect endangered species and maintain ecological balance. Walking safaris provide a closer connection with nature under expert supervision. Night safaris reveal nocturnal animals and unique behaviors. Visitors can learn about Maasai traditions and their harmonious relationship with the land. The vast landscape provides a sense of freedom and adventure. Serengeti National Park remains a bucket-list destination for travelers seeking authentic African wildlife experiences.', 'https://images.unsplash.com/photo-1516426122078-c23e76319801?w=800&h=400&fit=crop', 'Africa, Wildlife & Nature', '2025-12-16', '2025-12-17', 2),
(2, 'Pyramids of Giza, Egypt', 'The Pyramids of Giza are among the most iconic and ancient structures on Earth, built over 4,500 years ago. They served as monumental tombs for Pharaohs and stand as marvels of ancient engineering. The Great Pyramid of Khufu is the largest and oldest of the three. Their alignment with celestial bodies demonstrates the Egyptians’ advanced knowledge of astronomy. The surrounding desert adds to their mystical aura. Archaeologists continue to study the pyramids to uncover secrets about construction methods. Visitors marvel at the massive limestone blocks and precise architecture. Camel rides around the pyramids provide unique photo opportunities. The site is part of a UNESCO World Heritage site. Visiting the pyramids offers insight into one of the world’s most influential civilizations.', 'The pyramids’ scale and precision are awe-inspiring, leaving visitors in admiration of ancient ingenuity. The nearby Sphinx adds to the historic and cultural significance of the Giza plateau. Guided tours explain the lives of pharaohs and the purpose of the pyramids. Desert landscapes and changing sunlight create dramatic photographic scenes. Exploring the interior chambers gives a glimpse of ancient burial practices. Local bazaars offer souvenirs, spices, and traditional crafts. Camel treks allow for immersive desert exploration. Educational displays provide historical context and archaeological discoveries. The site is perfect for historians, photographers, and adventure seekers. Every visit evokes a deep appreciation for Egypt’s rich heritage and ingenuity.', 'https://plus.unsplash.com/premium_photo-1664303467567-17891a27998a?w=800&h=400&fit=crop', 'Africa, Historical Places', '2025-12-07', '2025-12-17', 2),
(3, 'Bali, Indonesia', 'Bali is a tropical paradise known for its lush rice terraces, spiritual temples, and vibrant culture. The island offers a rich blend of traditional arts, dance, and music. Surfing beaches attract adventure enthusiasts from around the world. Bali is home to serene yoga retreats and wellness resorts. Its volcanic landscapes provide scenic hiking opportunities. The island has a warm tropical climate ideal for year-round travel. Balinese cuisine features unique flavors and traditional dishes. Visitors can explore traditional markets and artisan villages. Sacred temples like Uluwatu and Tanah Lot offer spiritual and cultural experiences. Bali’s warm hospitality and vibrant festivals make every visit unforgettable.', 'From adventure to relaxation, Bali caters to every type of traveler. Surfing, snorkeling, and diving allow exploration of vibrant marine life. Trekking and mountain hikes reveal stunning vistas of the island’s greenery. Spiritual experiences include temple ceremonies and meditation retreats. The island is rich in traditional crafts such as wood carving, painting, and batik textiles. Sunset viewpoints provide breathtaking panoramas over the ocean. Festivals showcase traditional dance, music, and cultural heritage. Local guides offer insights into history, myths, and legends. Culinary tours highlight unique Balinese flavors and ingredients. Visitors leave with memories of vibrant culture, natural beauty, and soulful experiences.', 'https://images.unsplash.com/photo-1701605305526-7bc0c634543f?w=800&h=400&fit=crop', 'Asia, Wildlife & Nature', '2025-12-02', '2025-12-17', 2),
(4, 'Maldives', 'The Maldives is an idyllic island nation known for its turquoise waters, coral reefs, and pristine white beaches. Overwater villas provide luxurious accommodations directly above the ocean. The marine biodiversity includes manta rays, tropical fish, and vibrant coral gardens. It is a top destination for honeymooners and luxury travelers. The Maldives experiences a tropical climate perfect for year-round visits. Snorkeling and diving tours reveal colorful underwater landscapes. Visitors can enjoy sunset cruises and private island picnics. Traditional Maldivian culture and cuisine add authenticity to the experience. Water sports such as kayaking, paddleboarding, and jet skiing are popular. The serene environment offers an unmatched sense of relaxation and escape.', 'Visitors can explore the Maldives’ rich marine life through guided diving and snorkeling excursions. Overwater bungalows provide direct access to crystal-clear waters. Cultural experiences include island village visits and sampling local seafood dishes. The sunsets are renowned for their breathtaking beauty. Eco-friendly resorts promote sustainability while offering luxury amenities. Photography opportunities abound with vibrant marine and beach landscapes. Relaxation options include spa treatments and yoga sessions. Adventure seekers can enjoy surfing, diving, and island hopping. Romantic experiences include private dinners on the beach or sandbanks. The Maldives is a perfect blend of adventure, luxury, and tranquility.', 'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?w=800&h=400&fit=crop', 'Asia, Adventure', '2025-12-13', '2025-12-17', 2),
(5, 'Great Wall of China', 'The Great Wall of China stretches over 13,000 miles across mountains, deserts, and valleys. Built over several dynasties, it was designed to protect Chinese states from invasions. Its construction involved millions of laborers, soldiers, and craftsmen. The wall features watchtowers, battlements, and fortified passes. It reflects the ingenuity and strategic planning of ancient China. Many sections remain well-preserved and accessible to visitors. Walking along the wall offers breathtaking panoramic views of the countryside. It is a UNESCO World Heritage site and a symbol of Chinese history. Seasonal changes create different visual experiences for travelers. Visiting the Great Wall is a journey through both history and nature.', 'Hiking along the wall provides an immersive experience into Chinese history and culture. Restored sections allow safe exploration while less-visited areas offer solitude. The watchtowers served as signaling stations and defensive posts. Guides provide insights into the wall’s construction and historical significance. Photography opportunities abound across rugged terrain and scenic vistas. Seasonal weather changes the landscape dramatically, from snowy peaks to green valleys. Visitors can experience traditional Chinese villages near the wall. It symbolizes resilience, determination, and architectural brilliance. Educational displays offer historical context for all ages. The Great Wall remains an iconic destination for adventurers and history enthusiasts alike.', 'https://images.unsplash.com/photo-1508804185872-d7badad00f7d?w=800&h=400&fit=crop', 'Asia, Historical Places', '2025-12-12', '2025-12-16', 3),
(6, 'Mount Fuji, Japan', 'Mount Fuji is Japan’s tallest peak and a sacred symbol of natural beauty. Its snow-capped cone is recognized worldwide. The mountain has inspired countless works of art, literature, and photography. Climbing Mount Fuji is a spiritual and physical journey for many. Seasonal changes, including cherry blossom season, enhance its scenic appeal. The surrounding area includes lakes, forests, and hot springs. Shrines and cultural sites reflect Japan’s spiritual heritage. It is part of the Fuji-Hakone-Izu National Park. The mountain is a UNESCO World Heritage site. Visitors experience both adventure and serenity in this iconic Japanese landscape.', 'Hiking Mount Fuji offers breathtaking views of surrounding mountains and valleys. Trails vary in difficulty and provide unique vantage points. Sunrise from the summit is a highly sought-after experience. The mountain is culturally significant, featuring in Shinto traditions. Local villages provide insight into Japanese rural life and hospitality. Photography opportunities are abundant during all seasons. Visitors can relax in nearby hot springs after climbs. Seasonal festivals celebrate Mount Fuji’s cultural and spiritual importance. Guides provide historical and geological insights. Mount Fuji is a must-visit destination for nature lovers and adventurers.', 'https://images.unsplash.com/photo-1549693578-d683be217e58?w=800&h=400&fit=crop', 'Asia, Historical Places', '2025-12-14', '2025-12-17', 3),
(7, 'Victoria Falls, Zambia', 'Victoria Falls is one of the largest and most spectacular waterfalls in the world. Known locally as Mosi-oa-Tunya, or \'The Smoke That Thunders\', it straddles the border of Zambia and Zimbabwe. The falls span over a mile wide and drop 108 meters into the Zambezi River gorge. The surrounding rainforest is lush and teeming with wildlife. Visitors can feel the mist and hear the roar from miles away. The falls create dramatic rainbows on sunny days. Adventure seekers can enjoy bungee jumping, helicopter tours, and river safaris. The site is a UNESCO World Heritage location. Local culture and villages offer insight into traditional life. Victoria Falls is a breathtaking combination of power, nature, and beauty.', 'Walking along the falls provides incredible vantage points for photography. The surrounding rainforest hosts unique flora and fauna. Sunset views create magical scenes over the Zambezi River. Boat tours allow closer exploration of the river and gorges. Guided tours provide historical and cultural context. Visitors can learn about conservation and local wildlife efforts. Hiking trails offer panoramic views of the falls and surrounding landscapes. Seasonal changes dramatically affect water flow, creating different experiences. Nearby towns provide accommodations, markets, and cultural insights. Experiencing Victoria Falls is both an adventurous and awe-inspiring journey.', 'https://images.unsplash.com/photo-1682284023696-3c69530fba8f?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?w=800&h=400&fit=crop', 'Africa, Wildlife & Nature', '2025-12-01', '2025-12-17', 3),
(8, 'Table Mountain, South Africa', 'Table Mountain is a flat-topped mountain overlooking Cape Town and the Atlantic Ocean. It is one of South Africa’s most iconic landmarks. The mountain is part of the Table Mountain National Park, rich in biodiversity. Hiking trails vary from easy walks to challenging climbs. The flora includes unique fynbos species, while wildlife such as baboons and birds inhabit the area. The summit offers panoramic views of Cape Town, Robben Island, and the coastline. Cable car rides provide an accessible way to reach the top. The mountain is a UNESCO World Heritage site. Sunset and sunrise views are breathtaking. Table Mountain is popular for both adventure and nature enthusiasts.', 'Visitors can hike or take the cable car to the summit for unparalleled views. Rock formations and cliffs provide opportunities for climbing and photography. Trails vary in difficulty and length, catering to all fitness levels. Flora and fauna tours showcase unique South African biodiversity. Sunset hikes provide dramatic vistas of the city and ocean. Guided walks offer historical and geological insights. Birdwatchers can spot endemic species in the fynbos vegetation. The mountain is a symbol of Cape Town and national pride. Seasonal changes create different visual experiences throughout the year. Table Mountain remains a must-visit destination for nature lovers and travelers seeking adventure.', 'https://images.unsplash.com/photo-1501594907352-04cda38ebc29?w=800&h=400&fit=crop', 'Africa, Wildlife & Nature', '2025-12-09', '2025-12-17', 3),
(9, 'Amsterdam, Netherlands', 'Amsterdam is known for its picturesque canals, historic houses, and vibrant culture. The city is famous for its cycling culture and scenic waterways. Museums like the Van Gogh Museum and Rijksmuseum showcase world-class art. The Anne Frank House provides insight into history and human resilience. Canal cruises allow a unique perspective of the city’s architecture. Cafés, markets, and vibrant neighborhoods add charm. Historic bridges and narrow streets create a storybook atmosphere. Festivals and cultural events occur year-round. The city is pedestrian-friendly and perfect for exploration. Amsterdam combines history, art, and modern lifestyle seamlessly.', 'Cycling along canals is the best way to experience Amsterdam’s charm. The city is full of cultural landmarks and historic architecture. Local markets offer food, crafts, and souvenirs. Boat tours provide scenic photography opportunities. Cafés and restaurants serve Dutch specialties and international cuisine. Museums display art, history, and innovative exhibitions. Festivals celebrate music, film, and local traditions. Nightlife offers vibrant entertainment options. The combination of canals, bicycles, and historic buildings creates a unique urban experience. Amsterdam is a city that blends tradition and modernity for visitors of all ages.', 'https://images.unsplash.com/photo-1512470876302-972faa2aa9a4?w=800&h=400&fit=crop', 'Europe, Historical Places', '2025-12-15', '2025-12-17', 3),
(10, 'Swiss Alps, Switzerland', 'The Swiss Alps are famous for their dramatic mountain landscapes and outdoor adventure opportunities. Snow-capped peaks, alpine meadows, and pristine lakes create stunning scenery. Popular activities include skiing, snowboarding, hiking, and paragliding. Scenic train journeys provide breathtaking views of valleys and mountains. Traditional Swiss villages showcase chalets, local culture, and cuisine. Wildlife includes ibex, marmots, and eagles. Summer and winter offer entirely different experiences. The Alps are perfect for photography and nature exploration. Visitors can enjoy spa resorts and wellness retreats. The region combines natural beauty with adventure and relaxation.', 'Winter sports attract tourists from around the world to the Swiss Alps. Hiking trails provide access to breathtaking panoramic views. Cable cars and mountain trains make exploring peaks accessible. Traditional Swiss culture is visible in villages, markets, and festivals. Photography opportunities abound with changing seasons and landscapes. Adventure seekers enjoy mountaineering, paragliding, and skiing. Lakes and rivers provide opportunities for kayaking and boating. Local cuisine features cheese, chocolate, and alpine specialties. Eco-tourism initiatives protect the fragile environment. The Swiss Alps are a bucket-list destination for adventure, nature, and culture enthusiasts.', 'https://images.unsplash.com/photo-1501785888041-af3ef285b470?w=800&h=400&fit=crop', 'Europe, Adventure', '2025-12-17', '2025-12-17', 1),
(11, 'Banff National Park, Canada', 'Banff National Park is located in the Canadian Rockies and is famous for its turquoise lakes and snow-capped peaks. The park offers opportunities for hiking, skiing, and wildlife viewing. Visitors can see bears, elk, and mountain goats in their natural habitats. Lakes like Moraine and Louise provide spectacular photography opportunities. Glacial rivers and waterfalls add to the park’s scenic beauty. The town of Banff provides accommodations, dining, and cultural experiences. Wildlife conservation is a key aspect of the park’s management. Seasonal variations offer different visual and recreational experiences. The park is part of a UNESCO World Heritage site. Banff is ideal for adventure, relaxation, and nature exploration.', 'Hiking trails provide access to mountain peaks, alpine meadows, and serene lakes. Wildlife watching tours allow visitors to safely observe animals. Canoeing and kayaking are popular on pristine alpine lakes. Scenic drives offer breathtaking views of the Rockies. Photography opportunities abound in all seasons. Winter offers skiing, snowboarding, and ice skating. Summer provides hiking, climbing, and camping experiences. Visitor centers provide historical and ecological information. Local culture and cuisine enhance the visitor experience. Banff National Park combines natural beauty with outdoor adventure for all types of travelers.', 'https://images.unsplash.com/photo-1671752862966-3e28f22453cd?q=80&w=1018&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?w=800&h=400&fit=crop', 'America, Wildlife & Nature', '2025-12-15', '2025-12-17', 1),
(12, 'New York City, USA', 'New York City is one of America’s most iconic destinations, known for its skyline, culture, and nonstop energy. The city is home to famous landmarks such as Times Square, Central Park, and the Statue of Liberty. Skyscrapers like the Empire State Building define its modern architecture. NYC is a global hub for finance, fashion, and entertainment. Diverse neighborhoods reflect cultures from around the world. Broadway theaters showcase world-class performances. Museums like the Metropolitan Museum of Art preserve history and creativity. Central Park offers a peaceful escape within the urban landscape. The city’s streets are alive day and night. New York represents ambition, diversity, and opportunity.', 'Walking through Manhattan reveals historic streets and modern attractions side by side. Visitors enjoy panoramic city views from observation decks. Food lovers experience cuisines from every culture. Brooklyn offers artistic spaces, bridges, and waterfront views. Street photography captures the city’s vibrant lifestyle. Seasonal events and festivals keep the city dynamic year-round. Shopping districts range from luxury brands to local markets. Iconic bridges connect neighborhoods and boroughs. New York City delivers unforgettable urban travel experiences. It is a destination that never sleeps and always inspires.', 'https://images.unsplash.com/photo-1635269506785-df52ac6e61ab?w=800&h=400&fit=crop', 'America, Historical Places', '2025-11-21', '2025-12-17', 1),
(13, 'Santorini, Greece', 'Santorini is a stunning Greek island in the Aegean Sea, famous for its whitewashed houses and blue-domed churches. The island was formed by a volcanic eruption thousands of years ago. Its cliffside villages offer breathtaking views of the caldera. Santorini is a popular honeymoon destination with romantic sunsets. The volcanic beaches include red, black, and white sand. Visitors can explore ancient ruins and archaeological sites like Akrotiri. Local wineries produce exquisite wines from volcanic soil grapes. The island offers hiking trails along the caldera edge. Traditional Greek cuisine is abundant in local tavernas. Santorini combines natural beauty, history, and culture for a perfect vacation.', 'Sunset views from Oia are considered some of the most beautiful in the world. Visitors can take boat tours to volcanic islands and hot springs. Photography opportunities abound with blue seas and colorful architecture. Local festivals celebrate Greek traditions, music, and dance. The island’s unique volcanic beaches offer sunbathing and water activities. Hiking from Fira to Oia provides panoramic vistas of the caldera. Catamaran cruises provide luxurious perspectives of the coastline. Art galleries and boutiques showcase local crafts and creativity. Santorini’s relaxed pace makes it ideal for wellness and leisure. The island is a combination of adventure, relaxation, and cultural exploration.', 'https://images.unsplash.com/photo-1601581875309-fafbf2d3ed3a?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?w=800&h=400&fit=crop', 'Europe, Adventure', '2025-12-14', '2025-12-17', 1),
(14, 'Bora Bora, French Polynesia', 'Bora Bora is a tropical paradise located in the South Pacific Ocean, renowned for turquoise lagoons and overwater bungalows. The island is surrounded by a vibrant coral reef teeming with marine life. Bora Bora offers a perfect combination of luxury and adventure. Water activities include snorkeling, diving, and paddleboarding. The lush interior features volcanic peaks and tropical forests. The island has luxurious resorts with world-class amenities. Romantic sunsets make it a top honeymoon destination. Visitors can enjoy boat tours around the lagoon. The island’s cuisine includes fresh seafood and Polynesian specialties. Bora Bora is a dream destination for travelers seeking beauty and serenity.', 'Lagoon tours provide opportunities to see sharks, rays, and tropical fish up close. Sunset cruises are popular for romance and photography. Overwater villas allow direct access to crystal-clear waters. Visitors can hike Mount Otemanu for panoramic views of the island. Traditional Polynesian culture is celebrated in music, dance, and art. The island is ideal for diving enthusiasts exploring coral gardens. Water sports provide adventure and fun for all ages. Luxury spa treatments offer relaxation amid tropical surroundings. Local guides share history, legends, and cultural insights. Bora Bora is the ultimate blend of adventure, culture, and tropical luxury.', 'https://plus.unsplash.com/premium_photo-1690963291830-3281149bed5d?w=800&h=400&fit=crop', 'Asia, Adventure', '2025-12-10', '2025-12-17', 2),
(15, 'Kyoto, Japan', 'Kyoto is Japan’s cultural heart, famous for its temples, gardens, and traditional architecture. The city has over 1,000 Buddhist temples and Shinto shrines. Cherry blossom season transforms Kyoto into a magical landscape. Visitors can explore the historic Gion district, famous for geisha culture. Traditional tea houses offer authentic Japanese tea experiences. The city has serene Zen gardens perfect for meditation and reflection. Kyoto cuisine includes kaiseki dining and street foods. Festivals celebrate seasonal changes and Japanese traditions. Bamboo forests nearby provide unique natural scenery. Kyoto seamlessly blends ancient culture with modern life.', 'Walking through Arashiyama Bamboo Grove provides a peaceful and picturesque experience. The Kiyomizu-dera temple offers panoramic city views. Visitors can participate in traditional tea ceremonies. Historical districts preserve wooden architecture and local crafts. Seasonal festivals like Gion Matsuri celebrate Japanese heritage. Local markets sell handcrafted souvenirs, food, and textiles. Photography enthusiasts capture temples, gardens, and cherry blossoms. Cultural experiences include kimono rentals and calligraphy workshops. Kyoto is a destination for spiritual reflection and cultural immersion. The city offers a timeless experience combining beauty, history, and tradition.', 'https://images.unsplash.com/photo-1549693578-d683be217e58?w=800&h=400&fit=crop', 'Asia, Historical Places', '2025-10-22', '2025-12-17', 3),
(16, 'Rio de Janeiro, Brazil', 'Rio de Janeiro is a vibrant city in Brazil, famous for its beaches, mountains, and carnival celebrations. The iconic Christ the Redeemer statue overlooks the city from Corcovado Mountain. Copacabana and Ipanema beaches attract sun-seekers from around the world. Sugarloaf Mountain provides panoramic views accessible by cable car. The city is rich in music, samba, and cultural festivals. Local cuisine includes traditional Brazilian dishes and street food. The historic Santa Teresa neighborhood features colonial architecture and art. Tijuca National Park offers hiking and wildlife experiences. Rio’s nightlife is energetic and diverse. The city combines natural beauty, culture, and adventure seamlessly.', 'Visitors can enjoy cable car rides to Sugarloaf Mountain for stunning sunset views. Carnival season features colorful parades, music, and dance performances. Beaches provide opportunities for surfing, volleyball, and relaxation. Favela tours offer insights into local culture and history. Hiking trails in Tijuca National Park reveal waterfalls and wildlife. Street art and murals enrich the urban landscape. Photography opportunities abound with beaches, mountains, and city views. Local markets sell handicrafts, souvenirs, and regional foods. Cultural events showcase Brazilian music, dance, and traditions. Rio is a city of energy, vibrancy, and unforgettable experiences.', 'https://images.unsplash.com/photo-1483729558449-99ef09a8c325?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?w=800&h=400&fit=crop', 'America, Adventure', '2025-12-16', '2025-12-17', 1),
(17, 'Queenstown, New Zealand', 'Queenstown is a stunning resort town in New Zealand, surrounded by the Southern Alps and Lake Wakatipu. It is known as the adventure capital of the world. Activities include bungee jumping, skydiving, skiing, and hiking. The landscape features dramatic mountains, rivers, and lakes. Wine tours and gourmet restaurants offer relaxation and indulgence. The town has vibrant nightlife and cultural events. Visitors can explore nearby Fiordland National Park. Scenic cruises provide views of the region’s fjords. Queenstown offers family-friendly attractions and outdoor adventures. The town perfectly balances adrenaline and tranquility.', 'Hiking and biking trails reveal stunning alpine scenery. Winter sports attract skiers and snowboarders from around the world. Jet boating, rafting, and paragliding provide thrilling experiences. Lake cruises offer peaceful sightseeing opportunities. Local wineries produce award-winning wines and gourmet experiences. Photography opportunities abound in every season. Adventure activities are available for beginners and professionals alike. Festivals and cultural events celebrate New Zealand’s heritage. The town offers accommodation ranging from luxury lodges to budget hostels. Queenstown is a must-visit destination for adventure seekers and nature lovers.', 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=800&h=400&fit=crop', 'Asia, Adventure', '2025-11-20', '2025-12-17', 2),
(18, 'Dubai, United Arab Emirates', 'Dubai is a futuristic city in the UAE, known for its skyscrapers, luxury shopping, and desert experiences. Burj Khalifa, the tallest building in the world, dominates the skyline. The Dubai Mall offers shopping, entertainment, and dining experiences. Palm Jumeirah and Atlantis Hotel are architectural marvels. Desert safaris provide dune bashing, camel rides, and cultural entertainment. The city combines modern luxury with Arabian heritage. Beaches along Jumeirah offer sunbathing and water sports. Traditional souks sell gold, spices, and textiles. Dubai hosts global events, exhibitions, and cultural festivals. The city is a blend of modernity, luxury, and tradition.', 'Visitors can ascend Burj Khalifa for panoramic city views. Desert excursions provide adventure and insight into Emirati culture. Dubai Marina offers dining, nightlife, and boat tours. Cultural experiences include visits to mosques and heritage villages. Photography opportunities abound with modern architecture and desert landscapes. Ski Dubai provides indoor skiing and snow activities. Beaches, pools, and luxury resorts offer relaxation. Global cuisine is available across countless restaurants. Annual events attract international travelers and performers. Dubai is a city of innovation, adventure, and luxury experiences.', 'https://images.unsplash.com/photo-1721801783844-e4b80e3c765c?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?w=800&h=400&fit=crop', 'Asia, Adventure', '2025-12-09', '2025-12-17', 3),
(19, 'Iceland’s Blue Lagoon', 'The Blue Lagoon in Iceland is a geothermal spa surrounded by lava fields. Its milky blue waters are rich in minerals beneficial for the skin. The spa is set in a dramatic volcanic landscape. Visitors can enjoy outdoor bathing, sauna, and steam rooms. The water temperature is comfortably warm year-round. The lagoon is surrounded by rugged lava formations and mossy landscapes. Luxury accommodations and spa treatments enhance the experience. Guided tours provide insights into Iceland’s geothermal energy. Photography opportunities include contrasting blue waters against black lava. The Blue Lagoon is a unique combination of relaxation, wellness, and natural beauty.', 'Visitors can enjoy therapeutic bathing and skin treatments. The geothermal waters provide a calming and rejuvenating experience. The surrounding lava fields create a dramatic and unique setting. Guided tours explain the science behind the geothermal activity. Seasonal changes offer different visual experiences and lighting. Sunset visits create magical reflections on the water. Cafés and restaurants offer Icelandic cuisine and refreshments. Photography opportunities abound throughout the lagoon and spa area. Local culture and traditions are highlighted in nearby exhibitions. The Blue Lagoon is an iconic Icelandic destination for wellness and adventure.', 'https://images.unsplash.com/photo-1439725434120-c1b50e0cc329?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D?w=800&h=400&fit=crop', 'Europe, Adventure', '2025-12-15', '2025-12-17', 1),
(20, 'Seychelles', 'Seychelles is an archipelago in the Indian Ocean known for pristine beaches, turquoise waters, and lush tropical forests. The islands are home to unique flora and fauna, including giant tortoises. White sandy beaches and coral reefs make it a paradise for snorkeling and diving. Luxury resorts and private villas offer relaxation and comfort. Hiking trails explore the tropical forests and granite cliffs. Birdwatchers can spot rare and endemic species. The islands’ warm climate allows for year-round visits. Creole culture, music, and cuisine enrich the visitor experience. Sunsets over the Indian Ocean are breathtaking. Seychelles is an ideal destination for adventure, relaxation, and nature immersion.', 'Island-hopping tours provide opportunities to explore remote beaches and villages. Snorkeling and diving reveal vibrant marine life and coral gardens. Hiking trails provide panoramic views of forests, cliffs, and beaches. Local markets offer handcrafted souvenirs, spices, and traditional foods. Photography is ideal with the combination of beaches, cliffs, and tropical vegetation. Luxury resorts provide spa treatments, water sports, and private experiences. Wildlife encounters include turtles, birds, and marine species. Guided tours explain local history, culture, and natural heritage. Seasonal changes influence weather, tides, and wildlife activity. Seychelles combines natural beauty, adventure, and cultural richness in one destination.', 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=800&h=400&fit=crop', 'Africa, Wildlife & Nature', '2025-12-13', '2025-12-17', 2),
(21, 'Petra, Jordan', 'Petra is an ancient city carved into rose-colored cliffs, known as the \'Rose City.\' It was the capital of the Nabataean Kingdom and a major trading hub. Petra features impressive rock-cut tombs, temples, and water channels. The Siq, a narrow canyon, leads to the famous Treasury. Archaeologists continue to uncover insights into Nabataean civilization. Hiking trails provide access to monasteries, panoramic viewpoints, and hidden caves. The site showcases a blend of natural beauty and human craftsmanship. Seasonal events illuminate the city for evening tours. Visitors can learn about local history and culture from Bedouin guides. Petra is a UNESCO World Heritage site and a must-visit archaeological wonder.', 'Exploring Petra reveals stunning rock-cut architecture and intricate carvings. The Monastery and Treasury are iconic landmarks. Guided tours provide cultural and historical insights. Hiking to viewpoints offers panoramic vistas of valleys and cliffs. Visitors can interact with local Bedouins and learn traditional crafts. Photography is ideal with sunrise and sunset lighting. Historical exhibits explain Nabataean trade, culture, and engineering. Seasonal light shows illuminate monuments at night. The city combines adventure, history, and cultural immersion. Petra remains one of the world’s most captivating archaeological destinations.', 'https://images.unsplash.com/photo-1589825274556-94746a018766?w=800&h=400&fit=crop', 'Asia, Historical Places', '2025-12-03', '2025-12-17', 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Asia'),
(2, 'Europe'),
(3, 'Africa'),
(4, 'America'),
(5, 'Wildlife & Nature'),
(6, 'Historical Places'),
(7, 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `category_blog`
--

CREATE TABLE `category_blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_blog`
--

INSERT INTO `category_blog` (`id`, `categories_id`, `blog_id`) VALUES
(1, 3, 1),
(2, 5, 1),
(3, 3, 2),
(4, 6, 2),
(5, 1, 3),
(6, 5, 3),
(7, 1, 4),
(8, 7, 4),
(9, 1, 5),
(10, 6, 5),
(11, 1, 6),
(12, 6, 6),
(13, 3, 7),
(14, 5, 7),
(15, 3, 8),
(16, 5, 8),
(17, 2, 9),
(18, 6, 9),
(19, 2, 10),
(20, 7, 10),
(21, 4, 11),
(22, 5, 11),
(23, 4, 12),
(24, 5, 12),
(25, 2, 13),
(26, 7, 13),
(27, 1, 14),
(28, 7, 14),
(29, 1, 15),
(30, 6, 15),
(31, 4, 16),
(32, 7, 16),
(33, 1, 17),
(34, 7, 17),
(35, 1, 18),
(36, 7, 18),
(37, 2, 19),
(38, 7, 19),
(39, 3, 20),
(40, 5, 20),
(41, 1, 21),
(42, 6, 21);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_21_123707_create_authors_table', 1),
(5, '2025_12_21_123715_create_blogs_table', 1),
(6, '2025_12_23_063115_create_categories_table', 1),
(7, '2025_12_23_063313_create_category_post_table', 1),
(8, '2025_12_24_115144_update_blogs_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_author_id_foreign` (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_blog`
--
ALTER TABLE `category_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_blog_categories_id_foreign` (`categories_id`),
  ADD KEY `category_blog_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_blog`
--
ALTER TABLE `category_blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_blog`
--
ALTER TABLE `category_blog`
  ADD CONSTRAINT `category_blog_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `category_blog_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
