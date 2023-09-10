-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 08:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jhin_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-09-04 00:28:33', '2023-09-04 00:28:33'),
(2, 'Web Desain', 'web-desain', '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(3, 'Personal', 'personal', '2023-09-04 00:28:34', '2023-09-04 00:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_22_083510_create_posts_table', 1),
(6, '2023_08_23_083149_create_categories_table', 1),
(7, '2023_09_05_085227_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Sequi quo cumque dolor sed laboriosam voluptas hic.', 'aut-voluptates-molestias-quam-error', NULL, 'Repudiandae aliquid dolorem qui asperiores veritatis voluptatum. Ea officia voluptatem nesciunt non aut tenetur et. Voluptatum est libero minus. Consequuntur quod modi accusamus animi nobis.', '<p>Libero repellat iure modi unde excepturi fuga. Adipisci aut perferendis cupiditate ea. Non molestiae ipsa enim accusantium ea. Rerum sed aut eum ad aperiam non.<p></p>Quia doloremque fuga dolorum velit iusto ad magni consectetur. Harum soluta laborum deserunt aspernatur enim ea et. Esse rerum porro optio. Quaerat cumque iste dolores ipsa.<p></p>Laboriosam dolorem nam aperiam voluptas deserunt reiciendis. Odit aut enim aut et. Ipsum aut maiores nisi tempore officia recusandae.<p></p>Qui ut nulla facilis in eaque. Occaecati mollitia odio accusamus optio. Architecto consequatur vel tenetur qui.<p></p>Repudiandae amet debitis et. Eaque ut consequatur amet sed sunt. Quo dolorem molestiae vel. Aspernatur voluptates quasi mollitia optio neque nihil id eaque.<p></p>Explicabo omnis accusamus debitis deleniti dolorum illo. Explicabo et porro qui rerum perspiciatis velit. Et voluptatibus excepturi illum itaque iusto nihil. Velit qui accusamus excepturi labore provident.<p></p>Minus aliquid distinctio ratione et in et exercitationem. Similique numquam sed minima quis. Qui et vel eum quo quis assumenda.<p></p>Numquam corrupti recusandae amet tempora aut quod est exercitationem. Rerum qui id odio aperiam. Iste omnis id aut voluptatem est. Pariatur non aut animi aspernatur nulla. Non labore sit ut et vitae facilis autem nemo.<p></p>Sint vel ducimus repudiandae fuga iste veritatis. Consequatur impedit voluptatum eos molestias provident asperiores quo. Voluptates magni exercitationem sed ut alias enim.<p></p>Voluptatum ut sequi aut. Id facere quisquam fugit eligendi dolorem odio consectetur. Velit voluptatem odit ut quibusdam omnis blanditiis.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(2, 1, 8, 'Cumque quisquam tenetur facere quidem.', 'rerum-excepturi-fuga-exercitationem-aut-perspiciatis-labore-doloribus-aliquid', NULL, 'Commodi illum est ipsum dolorem pariatur. Tempora facere vitae sapiente est autem non eveniet. Id dignissimos ab et ad. Et ut reprehenderit ut amet.', '<p>Quia ut voluptatem molestiae. Neque voluptatibus placeat maiores eos cum sunt repellat. Quod praesentium est exercitationem autem debitis et quia.<p></p>Aut quis officia qui eveniet fuga aut voluptatem. Sapiente sed nam enim. Nostrum ut voluptatibus sit vitae repudiandae.<p></p>Pariatur enim maiores eos odio nesciunt repudiandae illum doloribus. Fugit quis iure et doloremque praesentium. Vel officiis quibusdam deleniti odit dolor ut. Similique corporis sint error.<p></p>Molestias blanditiis cum quia quas id. Aut cupiditate quibusdam eos rerum. Est hic nulla illum sunt cupiditate expedita libero. Aut vitae eveniet est et a.<p></p>Illum quos doloremque sint error omnis. Sint dolor atque fugiat at fugiat. Ipsam saepe rerum vero. Eos in aut ut.<p></p>Quia maiores quis dolor velit et. Dicta possimus fugit velit aut totam dignissimos. Dolorem eos deserunt ut sequi est odit.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(3, 2, 4, 'Nemo provident.', 'dolorem-nihil-quos-et-ipsa-reprehenderit', NULL, 'Et aut similique vel eveniet facere. Cum perferendis eos dolor. Quo enim eaque explicabo quo ut porro. Alias beatae laborum enim iste officia ipsum.', '<p>Nemo ut omnis magnam distinctio et quisquam. Vero et qui dignissimos quia. Culpa dolores itaque suscipit doloremque. Sed quis ab soluta libero aliquid.<p></p>Autem quod quod sit eius corrupti enim. Dolores recusandae exercitationem officia aut occaecati. Velit qui maiores est unde. Dolores omnis odit est.<p></p>Illo labore eligendi doloribus voluptas saepe rem. Qui ex iure deserunt. Fugiat praesentium ea quis aut et. Iure numquam quam possimus perspiciatis.<p></p>Rem et voluptatum eius nostrum rerum iste iusto. Voluptatem et ratione et eligendi distinctio quasi qui. Laudantium velit aliquid qui ex.<p></p>Itaque quo enim qui. Est quia omnis est. Sunt qui ducimus quo est sapiente quae. Ab consequuntur ad consequatur ipsum.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(4, 3, 3, 'Facere suscipit.', 'incidunt-nulla-velit-dolor-consequatur-odio', NULL, 'Repellat voluptatum sapiente harum impedit. Totam labore nihil tempora iusto nulla vel tempora vel. Rerum ut aliquid est id sit repellat. Nobis quisquam consequuntur magnam nihil voluptatibus recusandae ea.', '<p>Dignissimos quidem harum necessitatibus odit qui. Animi consequuntur illum quod. Ipsa dolores esse sed qui pariatur dolor eius.<p></p>Eligendi qui dicta rerum. Voluptates error aut suscipit est cupiditate perferendis omnis. Laborum aut dolorem et.<p></p>Est sunt consequatur dolore sapiente distinctio veniam. Facere nisi nostrum quae aspernatur tempora molestias. Repellat placeat eum quis vero qui et culpa ratione. Voluptates accusantium quia eum reiciendis et possimus. Quae enim odit aut harum quibusdam doloremque.<p></p>Similique cumque esse fugit velit consequatur ut odio. Eius officia voluptate sapiente eum aliquid. Quos suscipit sed tempore magnam dolor sed a dolores. Quam itaque dolor vel sit doloribus.<p></p>Expedita blanditiis aut vero modi laborum. Dolor quod molestiae adipisci enim nulla qui. Et quo cum veritatis ducimus et soluta. Quod asperiores mollitia ut explicabo.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(5, 1, 8, 'Quia quia natus omnis possimus.', 'mollitia-possimus-consectetur-quod-mollitia-autem-a', NULL, 'Doloribus aut totam sed. Incidunt est veritatis corporis ullam et officia. Labore et omnis est in incidunt qui sunt earum.', '<p>Ut tempora assumenda sed consequuntur. Doloremque quidem et nihil. Nihil sed occaecati omnis sequi.<p></p>Et et atque temporibus et veritatis. Enim odio maiores laboriosam magni reiciendis. Ab voluptatem repellendus laudantium.<p></p>Nostrum ipsum quo totam molestiae. Cumque nemo qui perspiciatis nam dolores. Et voluptas perferendis reiciendis perspiciatis id consequuntur nesciunt.<p></p>Voluptate molestiae magni omnis et. Velit tenetur a sed dolorem sapiente delectus et ipsum. Doloremque aut sint quasi quis.<p></p>Sequi commodi voluptate quis culpa quae repellendus libero. Aut aut tenetur ipsa officiis aut aut. Corrupti velit recusandae nihil dicta.<p></p>Voluptatem consectetur eos laudantium id. Esse voluptas asperiores natus. Tempore voluptatem quasi quo et a. Aspernatur blanditiis sint ipsam natus.<p></p>Rerum eos occaecati eaque et saepe vel architecto. Error occaecati nihil numquam rem.<p></p>Minima aut quo placeat quam corporis iste. Porro molestiae rerum esse quia vitae nostrum ut. Corporis animi id voluptatum ullam impedit voluptatem. Minima in dolorem fugit est ipsa amet. Soluta optio soluta mollitia dolorem voluptatibus repellat eum.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(6, 3, 8, 'Repudiandae et dolore quo.', 'atque-hic-non-est-labore-dolorem-est', NULL, 'Vel quisquam aut voluptatibus itaque non doloremque qui. Neque eius et autem non. Sit id nihil totam doloremque. Est ipsum dolores expedita.', '<p>Quos dolorum optio magnam tenetur sed et. Ea qui facere quo repudiandae et eius. Laboriosam voluptates et nihil ducimus.<p></p>Non quis ducimus velit voluptatem totam tempora velit ut. Enim tenetur qui atque atque. Occaecati eum qui occaecati est.<p></p>Ipsa et iure ex. Nihil magni dignissimos ut provident ex non voluptatem. Cupiditate consequuntur autem pariatur porro vel omnis omnis.<p></p>Eos ipsum temporibus sunt omnis ducimus. Omnis dolores quis nisi dicta. Et ad qui dolorum.<p></p>Rerum voluptate vero ut voluptatem. Nihil cumque eos deleniti ad omnis id. Expedita quo sapiente neque voluptatem atque. Aut voluptas minima soluta voluptatum autem dolor pariatur et.<p></p>Porro repudiandae ea vero vel commodi esse magnam. Quis soluta ea delectus voluptatibus. Qui similique rerum cupiditate consequatur possimus minima.<p></p>Aut sequi harum expedita doloribus quia recusandae labore dignissimos. Dicta quis recusandae aut suscipit quis. Nemo quae ut eligendi ratione itaque occaecati ducimus.<p></p>Odit minima dicta exercitationem commodi quis possimus. Possimus voluptates veniam itaque laborum velit ratione. Voluptatem tempora tempore earum alias. Cupiditate ab placeat fuga qui exercitationem est.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(7, 2, 4, 'Deleniti eos culpa rerum qui id.', 'quaerat-quia-est-quidem-molestiae-in-voluptatibus', NULL, 'Voluptatem illum doloribus officia dolorum et illo corporis consequatur. Sed reprehenderit qui accusamus dolore error nemo aliquid. In tempora voluptatem laboriosam fuga iste natus aut. Voluptas nulla non tenetur labore accusantium quae et. Harum et qui sit velit sed nihil.', '<p>Tempore aspernatur consequatur praesentium itaque commodi. Iste doloribus sequi ut doloremque quos quasi. Nulla qui voluptatem non id quia eos. Rerum deserunt quae corrupti hic optio consequatur in harum.<p></p>Reprehenderit in ex distinctio voluptas maiores. Ut eligendi quaerat debitis rem. Molestiae unde odit tempora qui quis ipsum.<p></p>Velit qui porro ut laudantium veniam consectetur. Vitae saepe in est vero vero. Nesciunt ipsam voluptas quos quibusdam molestiae minima qui.<p></p>Itaque delectus recusandae corrupti sequi. Accusantium necessitatibus labore totam aut voluptatem. Ducimus eveniet quasi laudantium quia nihil.<p></p>Facilis aut voluptas enim qui. Voluptatem esse ea nihil. Quia et dolorem omnis tenetur expedita. Libero id reprehenderit sed tenetur autem repellat.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(8, 1, 7, 'Porro minima consectetur impedit sunt non vel soluta eligendi maxime.', 'quia-quo-doloremque-eum', NULL, 'Facere reprehenderit recusandae similique enim voluptas et. Harum accusantium et et dolor.', '<p>Dolorem est sit sit facilis quibusdam consectetur sunt. Ex incidunt quia voluptatem veritatis. Dolorum velit rerum adipisci modi eius sed.<p></p>Qui vero aut tempora aut laboriosam. Et est ut iure omnis aut. Et sed reiciendis beatae accusantium. Eius earum eveniet eos numquam ad voluptatibus.<p></p>Ut illum sint necessitatibus repellendus quos culpa quis. Sit dolor cupiditate consequatur.<p></p>Enim veritatis distinctio repellendus iure rem quod repellat. Voluptatibus in nesciunt ea. Beatae harum sed non. Modi sed magni quia enim consequatur adipisci.<p></p>Fugit velit libero est et. Alias voluptatem at occaecati deserunt omnis ut. Itaque libero ut est alias cum eum sunt. Minima aspernatur blanditiis perferendis iure autem laborum itaque.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(9, 2, 8, 'Sit maiores id neque ea voluptatem.', 'occaecati-nisi-et-ad-nihil-excepturi', NULL, 'Reprehenderit quam tempore voluptatem quas corporis et. Deserunt qui voluptatem sit sunt. Optio atque pariatur dolore mollitia dicta. Consectetur vel provident dolor ducimus et et. Error perspiciatis necessitatibus exercitationem vitae.', '<p>Quas laboriosam suscipit tempore nostrum provident veritatis. Incidunt voluptatum blanditiis maxime accusantium porro ea libero. Soluta error dicta aut et aliquam quae.<p></p>Quasi illum quae tempore iusto voluptates. Non voluptatem nihil beatae omnis nam. Voluptate voluptas quibusdam sed voluptas doloribus quas. Vel deserunt similique natus amet vel esse.<p></p>Aliquam minima qui vero excepturi. Et unde aut eius occaecati laudantium nostrum quae. Vel itaque quod ipsam quis maxime qui.<p></p>Consequatur ipsa quia dolorem eos. Ut pariatur quae voluptatibus consequatur omnis reprehenderit et. Quo reiciendis nihil omnis distinctio officiis doloribus vel quidem.<p></p>Alias impedit vel atque magni porro. Vitae nihil totam molestiae similique quisquam est minima. In doloribus aut repellendus natus dignissimos nisi maxime. Nemo quis cupiditate aut impedit.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(10, 2, 1, 'Aut voluptates qui.', 'autem-voluptates-qui-ut-rerum-ab-repellendus', NULL, 'Incidunt autem rerum ullam in sunt. Necessitatibus nam non ipsa ut totam. Nemo et et reiciendis accusantium sed ea nemo. Et alias enim tenetur tempora quisquam.', '<p>Sunt et eaque fugiat. Et ut necessitatibus debitis sed sint vero in. Magni cum nulla vitae ipsum delectus corporis quo ab.<p></p>Quidem ipsam debitis magnam culpa commodi cumque aut. Quo quia similique blanditiis est ea occaecati. Voluptatem eligendi dignissimos accusantium sed et ut voluptate. Assumenda eos dolore magni aperiam sequi fugit. Sunt modi sit temporibus.<p></p>At inventore modi sed hic error maiores. Ut est est earum repellendus. Minima dolore fugiat asperiores quam. Et rerum quam voluptatem illum facilis.<p></p>Sed consequatur aliquid assumenda et. Modi dolorem culpa repellat occaecati repellat qui. Laudantium illum architecto rerum dolor.<p></p>Perspiciatis qui quis aliquam sapiente dolorem consequatur corrupti. Eaque doloremque vitae aliquid quae fugiat quidem suscipit. Aliquid pariatur quis consequuntur corrupti odio voluptas quo. Est non porro natus vero.<p></p>Autem minus commodi accusamus incidunt possimus cumque unde. Laudantium voluptate vel aut quia fugiat officiis sit. Sed dolor in consequatur nostrum. Neque ullam maxime facilis ipsam eius eaque voluptas.<p></p>Ad est dolor rerum quae hic. Beatae ut dolorem distinctio itaque vitae. Voluptates quo laborum officia vel nisi odit sapiente. Veritatis dolores tempore maiores hic dolores ut. Quidem est soluta eum.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(11, 3, 7, 'Et beatae sunt delectus est veniam et reiciendis.', 'nihil-corrupti-odio-magnam-sit-molestiae', NULL, 'Fugit est culpa dolore velit ut. Expedita iure nam et. Perspiciatis quia dolorem unde voluptates. Veritatis adipisci dolorem qui tenetur fugit est.', '<p>Officiis odit fugiat numquam nesciunt quia. Repellendus ex soluta rem deleniti minus. A quibusdam iste doloremque ducimus. Perspiciatis laborum nostrum deleniti enim consequatur aspernatur deleniti. Ipsa sit nobis ab qui.<p></p>Sit doloribus reiciendis autem optio. A ad consectetur nobis qui perspiciatis consequatur non. Qui recusandae tempora vero consequatur excepturi molestias.<p></p>Mollitia dolores autem aliquid totam. Voluptatem quos ut dolorem qui. Fuga corrupti corrupti cum odit necessitatibus incidunt quidem.<p></p>Aut ut quos voluptatem qui. Exercitationem molestiae tenetur sit in et exercitationem. At deleniti nobis et.<p></p>Id aut animi molestiae. Debitis officiis aliquid ut. Magni tempora et enim placeat ut voluptatibus sapiente. Omnis impedit occaecati itaque consequatur ea.<p></p>Sapiente consequatur aperiam saepe. Est qui eius accusamus tenetur consectetur. Aperiam ut autem ratione explicabo sed facere architecto excepturi.<p></p>Voluptates ab saepe eaque et debitis inventore. Distinctio illum perspiciatis et autem voluptatem. Veniam possimus quas rem rem qui porro ab.<p></p>Soluta qui commodi iure porro. Ducimus est alias soluta maxime. Corporis doloribus qui illo consequatur et nobis itaque veritatis.<p></p>Praesentium non sed quibusdam sapiente provident. Rerum minus ad et fugiat. Rerum officiis et non accusamus autem eius aut.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(12, 3, 5, 'Labore ea dolores.', 'nobis-ea-consequuntur-perspiciatis-tenetur', NULL, 'Blanditiis ducimus corporis iste voluptatum optio maxime itaque saepe. Qui officiis est a quod dolorem error. Minima minus aut voluptatem quasi eos sequi.', '<p>Maiores magnam nostrum voluptatum recusandae. Et esse illum praesentium quam quam eum officia. Alias eligendi dolore cum impedit. Temporibus accusamus dolores atque placeat nihil. Nihil quibusdam a eligendi sunt omnis.<p></p>Et illo atque consequatur sed. Blanditiis placeat ut laboriosam cum debitis blanditiis in temporibus. Eaque ducimus quis quos animi.<p></p>Quasi dolores consequatur et illum libero delectus. Ullam reprehenderit iste voluptatem harum eos neque minima. Nam fugiat at aut. Odio hic illo ducimus inventore neque maiores molestiae.<p></p>Omnis accusamus est rerum totam. Architecto eius quisquam quam rerum ut sed. Sit sit unde molestiae consequuntur doloribus rem.<p></p>Fugiat eum exercitationem neque optio. Ut deleniti tempora totam voluptas.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(13, 2, 6, 'Repellendus illo accusantium nemo blanditiis facilis ut perspiciatis ut tempore nulla.', 'qui-in-qui-alias', NULL, 'Et et et ex ipsa vero maxime qui. Est iure quasi error qui. Distinctio est unde est corrupti excepturi placeat rerum enim.', '<p>Aliquam ut omnis qui pariatur. Ullam quo iste exercitationem. Nihil eaque sed ut ut esse ad aliquam. Eligendi aperiam tenetur soluta omnis fugit quia praesentium et.<p></p>Nihil unde et non quis. Consectetur quisquam dolorem error veniam. Sint hic expedita amet eaque nemo.<p></p>Ipsum ducimus ut aut omnis. Consequuntur eum quo consequatur est est debitis. Beatae autem quis totam debitis.<p></p>Et aut maiores architecto labore quod. Ut totam mollitia odio nam earum. Et consectetur laudantium minus tempore.<p></p>Qui consequatur accusantium nam consequatur qui molestiae magnam. Velit illo molestiae non dolor. Harum a reprehenderit quisquam ullam amet.<p></p>Consectetur molestias aspernatur eius deleniti. Ut velit officiis possimus ducimus. Vero et incidunt voluptatem similique quia earum.<p></p>Molestias repudiandae magni id. Tempora dolorum soluta recusandae vel dolor eligendi. Ipsam quia quidem in ipsa quaerat sint.<p></p>Deserunt nostrum odio tenetur nulla molestiae. Necessitatibus autem beatae laudantium nisi. Et odio assumenda autem totam. Non et quam ipsa sequi minus. Unde earum ab nam culpa consequuntur.<p></p>Ipsa necessitatibus iure ratione et. Qui vel aliquid cumque molestiae. Saepe maiores et ea a quos.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(14, 3, 7, 'Sit autem qui est nemo.', 'et-eum-voluptatibus-rerum-quis', NULL, 'Dolores minus et ratione et. Aut dolores sint quia voluptas est quasi. Quis iusto omnis iure corporis vitae ducimus soluta reprehenderit.', '<p>Vitae qui enim hic aut sed. Non et adipisci qui corrupti at aut. Natus eveniet voluptatibus quia quis. Sit in facilis quia commodi.<p></p>Magni temporibus dicta sunt non ut enim. Quasi explicabo fugit ea sed ducimus explicabo et dolores. Temporibus ipsam necessitatibus adipisci.<p></p>Corporis quas illo repellat. Illo sunt quisquam sed dignissimos. Illum natus ipsam vel architecto. Placeat ipsa voluptatibus itaque culpa quis.<p></p>Dolorem earum excepturi ut aliquid. Illo id qui porro accusantium nesciunt iure non sunt. Ipsam repudiandae iusto quis harum numquam provident reprehenderit. Commodi odit dolorum consequatur aperiam.<p></p>Quia fugit repudiandae eum doloremque. Earum dolor amet ab illum.<p></p>Et quas in maiores odio quis ratione. Minus rerum totam aspernatur neque fugiat iure unde. Vel velit ipsa voluptate accusamus dicta deleniti. Dolore at dolorem possimus omnis aperiam qui minus natus.<p></p>Vitae quis debitis amet nobis perferendis excepturi illum. Et quis occaecati et expedita molestiae.<p></p>Soluta rem voluptates qui aspernatur. Hic praesentium quam atque non id ut natus. Ut rem maxime repellendus iusto.<p></p>Hic sit fugit quos cupiditate vitae temporibus asperiores. Quia ipsa quis ut dicta dolorem earum doloribus et. Aut ducimus voluptatum consequuntur. Explicabo pariatur temporibus quos quasi nulla tempora officiis.<p></p>Aut atque nulla fugiat incidunt culpa labore voluptatem illum. Debitis suscipit harum dolorem aperiam id quae. Ab voluptatum minima ut aut officiis. Qui ipsum enim hic et libero dignissimos corrupti sint.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(15, 3, 5, 'Illum dolores.', 'nihil-animi-quod-aut-nemo-quam-facere-voluptas', NULL, 'Dicta qui error et nemo non libero. Saepe alias sit a numquam. Ut voluptate a dolores nam ipsum sed necessitatibus molestias. Suscipit odit sed illum quis maiores voluptatibus.', '<p>Blanditiis nihil possimus fugit rerum et corporis. Est molestias atque dolores impedit autem sunt et. Quae facilis modi voluptatem magni quo.<p></p>Voluptas consequuntur nisi id. Dolorem voluptatem rerum non qui.<p></p>Iure sunt et est sit adipisci necessitatibus labore rerum. Reiciendis ipsum voluptatibus deleniti est porro commodi similique. Laboriosam labore aut in sint recusandae. Alias autem officiis quibusdam consequatur eum aut iusto.<p></p>Recusandae molestiae impedit quis ab. Neque possimus dolor veniam quia quia sint maiores.<p></p>Quam provident quod enim non. Est eaque officiis in rem laudantium tempore. Omnis inventore nostrum ea molestiae voluptate ea. Dolor aut porro sed in et ad.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(16, 2, 3, 'Necessitatibus rerum esse.', 'consequatur-incidunt-temporibus-minus-consequatur', NULL, 'In atque minima nobis pariatur ipsa voluptas facilis dolor. Est libero sint cupiditate ut perferendis maiores aut consectetur. Aut magni aut eveniet quis dolorem laboriosam asperiores. Est eveniet eum ratione. Fuga libero tempore reiciendis dolorem deserunt consequuntur.', '<p>Recusandae deleniti minus nam nisi dicta voluptatem. Minus alias dolorem adipisci voluptatem et vel omnis. Optio quia fugiat laborum et.<p></p>Velit sint harum saepe laboriosam cupiditate voluptatem enim. Quod nostrum iste quod ex et. Ipsa quisquam asperiores perspiciatis consequuntur eligendi dolore a.<p></p>Repudiandae quibusdam esse magni omnis molestias laudantium ullam. Sapiente nulla sed officiis at. Repellat alias molestiae sit aut est est.<p></p>Eligendi dolorem nemo rerum aut deserunt enim rerum. Suscipit qui nihil possimus. Alias quia reiciendis dolorum eum eum modi.<p></p>Officia cupiditate consectetur velit ex. Nesciunt amet et facilis temporibus quaerat hic. Quis expedita aliquid porro vel facilis magnam.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(17, 3, 4, 'Necessitatibus aliquid quis.', 'est-illum-deleniti-nihil-et-officia', NULL, 'Repellat necessitatibus pariatur aliquam animi sed. Esse porro atque magni maiores quas dolores et. Nihil aperiam consectetur itaque.', '<p>Est rerum magnam deleniti dolorem modi voluptatem molestias et. Quidem quibusdam dolorem accusantium velit recusandae sunt. Molestias quibusdam quos possimus vel non repellendus et assumenda. Doloremque atque sequi et est amet accusantium.<p></p>Maiores animi saepe ad aliquam est dolorum. Quia laudantium quis enim voluptas eum assumenda. Corrupti deleniti nihil cum aliquam odit quam.<p></p>Voluptates eos distinctio quod qui. Beatae asperiores quasi possimus. Sunt itaque saepe aut ab et. Fugiat omnis qui modi non eos ut. Voluptates totam quas labore esse sint.<p></p>Distinctio inventore voluptate possimus. Molestiae ipsam dicta ipsa dolore.<p></p>Et consequuntur minus corporis quam omnis. Nostrum qui quam nam magnam nemo cumque nesciunt. Ipsam sit sit id laboriosam voluptatem minima. Velit totam perferendis est cupiditate quaerat illo.<p></p>Molestiae itaque voluptatem eum sed qui. Enim qui sed expedita rerum. Earum suscipit itaque suscipit quos deserunt et at. Itaque molestiae sit distinctio rerum rem consequatur.<p></p>Minus molestiae inventore maxime a perspiciatis tempore. Aliquid vel non quam iure expedita ipsam sunt necessitatibus. Est qui impedit quo iure.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(18, 1, 7, 'Sequi dicta quo dolore quia error voluptas.', 'incidunt-quod-aut-voluptates-omnis-quam', NULL, 'Consequatur qui assumenda unde aspernatur quisquam distinctio ut. Et in assumenda quia consectetur. Inventore eum fuga molestias maiores incidunt labore quisquam. Fugit earum non eum ut qui tempora.', '<p>Officiis alias cum beatae consequatur est perferendis. Architecto nisi aperiam neque rerum nihil dolor. Odit aut repellendus maiores dolor iusto. Ea veniam aut beatae illum voluptatem doloribus.<p></p>Quam unde laudantium laboriosam consequuntur quia voluptatem. Officia assumenda quaerat sunt reiciendis voluptatem. Aut nostrum at sed. Ut voluptatem velit doloribus. Nulla rerum omnis debitis dolorem doloribus.<p></p>Ab et neque et voluptatem dolorum dicta. Debitis excepturi voluptatem enim omnis dolor est sit debitis. Aut dolorum voluptatem quo aliquid sit ut earum.<p></p>Et dicta ipsum praesentium quaerat sed explicabo. Ullam illum aut aut voluptatem sequi neque magnam eum. Ipsum veniam minus quia quis nisi et.<p></p>Iure neque modi reiciendis sed vel. Dolor et recusandae nisi voluptatem. Possimus dolorem corporis fugit reprehenderit nihil quibusdam. Dolores aut dignissimos non sunt qui quia.<p></p>Quam sunt veritatis ipsam in perferendis voluptatem consequatur. Nobis vel eveniet optio tempore. Enim debitis aperiam voluptatem.<p></p>Veritatis possimus et maiores voluptas expedita. Debitis dolores sed numquam laborum amet hic quasi eaque. Provident reprehenderit aut et aperiam et quos aut.<p></p>Repudiandae autem molestiae laudantium et dolor occaecati eius. Est et expedita fugiat fugit blanditiis blanditiis. Sit assumenda vel veniam. Ut perferendis culpa saepe harum vel nihil dolor.<p></p>Aut dicta unde delectus ut magni ut veritatis et. Et et deserunt quia qui repellendus. Ab qui necessitatibus nemo molestias quas dignissimos. Id quaerat quam voluptatem laudantium nihil.<p></p>Vel aspernatur sed aliquid quia id maiores. Hic quos qui omnis labore illo eos. Ullam beatae optio quia illo et sit ipsa qui. Dolore quis dolores placeat praesentium. Optio et non rem.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(19, 3, 4, 'Voluptas aut quia saepe quidem exercitationem.', 'repellendus-suscipit-maiores-aut', NULL, 'Similique sapiente rerum qui assumenda autem culpa possimus. Unde eius omnis voluptate neque consequuntur nemo rerum. Culpa nam ab quo adipisci cupiditate.', '<p>Repellendus error qui aut beatae placeat. Asperiores fugiat ut ipsa ex dolor asperiores. Molestiae sunt hic reiciendis et accusamus consequuntur voluptas. Quia doloribus doloremque commodi non consectetur.<p></p>Omnis dolorem voluptatum fugit. Non quibusdam animi recusandae eveniet repellendus. Veritatis necessitatibus voluptate in quis. Amet qui est velit minima nemo.<p></p>Unde voluptatibus animi nostrum consequatur qui atque quia. Omnis voluptas aut debitis ab alias ab ut. Perspiciatis veritatis inventore placeat consequatur fuga dolorum quasi. Quos dolorum soluta quam similique ut qui error. Similique consequuntur odio id accusamus harum ipsum reprehenderit praesentium.<p></p>Dolor id laborum et qui doloribus nihil. Expedita vitae eum illum et consectetur enim dolorem. Est mollitia quia velit et. Eos ad rem ea fugit fugit cum quos sequi. Voluptates et maxime nesciunt architecto a.<p></p>Ut et doloremque numquam vel quas repudiandae ducimus quod. Sed inventore sit est sed qui ut mollitia. Qui magni eos maiores iusto fugit quos. Quis exercitationem molestiae repellat dicta quo illo fugiat similique.<p></p>Adipisci eum consequatur facere vel provident ipsam nisi. Et tenetur non qui est. Quasi distinctio enim perferendis voluptas nam ducimus. Non aliquam labore non.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(20, 3, 7, 'Rerum eius et iure iste occaecati.', 'aperiam-nisi-animi-ullam-minima-sit-quas', NULL, 'Tempora molestiae ea ullam itaque doloribus mollitia. Sequi natus eum iusto temporibus. Laudantium consequatur quasi earum voluptas perferendis illo a. Temporibus excepturi et in voluptas repellendus est.', '<p>Et aperiam dolorem voluptatibus. Et natus numquam nisi numquam ea. Non reiciendis iure similique sunt veniam numquam. Optio reprehenderit molestiae repellat dolorum sunt eius a repellat. Quisquam voluptatem vel itaque facilis esse.<p></p>Aut corporis fuga pariatur consequatur eius voluptatem. Magnam nostrum repellendus officiis fugit. Doloremque sint inventore eos maiores. At laborum qui rem et nesciunt neque nihil.<p></p>Praesentium debitis voluptatibus omnis molestiae magni vero. Ducimus laborum veniam est ea odit nulla. Nemo et magni quo.<p></p>Consequatur blanditiis quos ut laudantium est ut minima dolore. Quae officia rerum mollitia. Animi in quis recusandae reprehenderit repudiandae. Vel laudantium in soluta laudantium omnis autem.<p></p>Optio quae eligendi sed quidem itaque sed sunt. Mollitia dolore expedita voluptatibus libero. Dolorum labore corrupti nostrum voluptate explicabo. Sint quaerat quos et et occaecati dolor.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(21, 2, 8, 'Voluptatem officia harum.', 'delectus-reprehenderit-et-et-quaerat-accusamus-et-repudiandae', NULL, 'Id est cumque esse ut nulla dolor non et. Tempora perferendis sunt et numquam. Inventore molestiae reprehenderit ducimus quos accusamus. Reprehenderit corrupti ea aliquam sit vero ut.', '<p>Architecto voluptas aut expedita dolor. Aspernatur repudiandae est aut error. Unde repudiandae fuga rem. Voluptates deserunt et non ducimus dolor.<p></p>Dolorem ullam error rem dignissimos voluptatibus aut consequuntur illo. Autem voluptatum est consequuntur veritatis consequuntur sed molestiae. Et placeat voluptatem non quia nisi non aliquid. Tenetur iure quis laboriosam dolor molestiae corrupti.<p></p>Expedita quasi labore facilis et. Atque consequatur aperiam facilis deserunt impedit. Et eum consequatur qui consequatur laborum at. Quia minima debitis aspernatur quidem dolorem itaque necessitatibus. Dolor est hic labore quae dolor eum fugiat veritatis.<p></p>Saepe laborum magnam dolores voluptatem ducimus ab et. Dicta quo voluptatem et qui dolore. Totam earum deserunt aut nesciunt sed commodi. Modi dolore magni est consequatur vel. Voluptatem in omnis mollitia officiis ut.<p></p>Nesciunt rerum accusantium dolore. A praesentium corporis voluptatum voluptatem. Illo ut error beatae amet similique. Sit velit soluta aliquid reprehenderit delectus.<p></p>Ea est et nostrum sunt recusandae qui inventore. Consequatur natus et quae qui laudantium.<p></p>Totam sit asperiores nisi ut quia officia. Et omnis est consectetur eius. In optio quia molestiae qui tempore. Ex voluptas ut numquam quia quasi non.<p></p>Laboriosam qui voluptates facilis ducimus. Beatae ipsum veritatis unde ea nostrum numquam. Ad consequuntur non facilis in optio. Aut ipsum velit libero fugit ullam quia.<p></p>Architecto pariatur libero odit nisi consequatur odio et. Dignissimos dicta vel exercitationem consequuntur. Et voluptatem labore mollitia architecto aut occaecati perspiciatis.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(22, 3, 3, 'Temporibus rerum impedit sunt rem suscipit quaerat.', 'quos-dolores-consequatur-provident-exercitationem-nemo-hic-suscipit', NULL, 'Laudantium officiis tempore voluptas et. Nemo numquam doloremque eos earum in autem. Quidem amet aliquam est reiciendis aut.', '<p>In culpa est laborum et. Dolorem quisquam quia quia fugit amet. Temporibus sint et et dolorem provident. Quisquam quidem est nostrum sit. Et consectetur quia nihil doloremque tempora.<p></p>Sint occaecati officiis ipsam iste. Voluptatem vel expedita aut non laborum. Libero alias voluptas voluptas.<p></p>Ut quaerat nobis id est beatae. Optio ex esse voluptatem molestias cum et. Recusandae ut eveniet voluptatem molestias.<p></p>Rem dolores dolorum impedit est ipsam a. Rerum voluptate possimus id aut odio. Odit quia sunt sed ullam natus. Et voluptate deserunt iure deserunt.<p></p>Neque quas et inventore id. Pariatur cumque rerum cumque qui qui rerum. Est ea debitis dolorum dolores. Et velit voluptates aut molestiae ad distinctio consectetur quia.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(23, 2, 7, 'Dolorem natus voluptatem omnis et.', 'soluta-voluptas-voluptatem-sint-velit', NULL, 'Quidem molestiae aut fugiat incidunt tempore. Doloribus nobis fugit vero.', '<p>Ut eligendi qui id perferendis doloribus. Dolor harum doloribus aut enim iure repellendus ut minus. Qui et modi officiis voluptatem expedita. Explicabo sed voluptate minus similique commodi repudiandae. Repellendus mollitia minus atque atque facere omnis fuga est.<p></p>Fugit iure sint laborum labore facilis. Cum numquam alias maiores vitae voluptatem. Reprehenderit quas eos ut eius. Dolor cumque molestias rem rerum cupiditate.<p></p>Atque sit culpa modi occaecati explicabo. Quod sit quis exercitationem facilis non voluptas repellat quas. Magnam occaecati nulla voluptas tempore neque atque sapiente.<p></p>Autem saepe consequatur dolores vel. Ut perspiciatis tempora nobis ut labore sequi sit. Et ipsum ex nihil hic. Illum vitae doloribus dolores inventore tempora beatae unde. Et sapiente dolore architecto consequuntur.<p></p>Ab corrupti facilis qui ut sint iste enim. Et aut doloremque quaerat nostrum. Fugit neque aut aliquam quis corporis velit. Nobis sunt dolores dolor sit iste ut iste. Nobis blanditiis molestias rerum enim.<p></p>Eligendi harum expedita quas. Saepe omnis impedit aut sit maxime repellendus quis. Id quo voluptatem libero cum laborum libero.<p></p>Aliquam et aperiam soluta est. Cum odio est quas. Saepe ipsam occaecati eius aut ex.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(24, 1, 2, 'Numquam molestias voluptatem odio sequi et ratione.', 'praesentium-distinctio-earum-et-commodi', NULL, 'Quo et repudiandae voluptas rerum unde in. Quibusdam delectus sed eum optio ut. Ducimus nostrum sequi velit consequatur repellat quia consequatur ut. Quo nihil fuga sed fugit placeat at numquam.', '<p>Iste quas et quisquam rem animi repudiandae. Ut tempora ut sit et commodi esse suscipit. Id asperiores magni est et. Repudiandae quo rerum necessitatibus dolorum itaque.<p></p>Sunt deleniti voluptatum praesentium ullam qui. Quo animi qui suscipit. Nesciunt veritatis tempora iure.<p></p>Accusamus accusamus et qui ducimus et aspernatur perspiciatis. Est excepturi adipisci possimus ea ab cupiditate voluptas. Voluptatem voluptatem id iusto sit doloremque.<p></p>Nulla non laborum itaque hic nulla illum deleniti. Sunt et atque porro sed doloremque delectus deserunt. A labore quaerat at ullam.<p></p>Iure consequuntur maxime similique ut. Eum magni saepe enim ut sit laborum. Et tempora adipisci doloremque inventore itaque veniam. Adipisci inventore et et ratione nemo.<p></p>Quidem possimus nesciunt deserunt provident. Consequatur modi ducimus qui sint. Aut reiciendis nostrum tempora omnis amet non saepe. Ratione fugiat consequatur natus aut beatae.<p></p>Reprehenderit sint maiores officiis. Repudiandae inventore totam soluta vero. Sunt voluptatem qui quisquam nihil dolorem incidunt quia.<p></p>Illum illo sed possimus possimus unde veniam soluta et. Quia similique laborum esse atque. Aut reiciendis aspernatur omnis sit. Dolorem facere est consequuntur exercitationem dolor. Ut quos in eveniet quae iste.<p></p>Harum cum ut sed quo quae aut non. Optio nemo eligendi qui itaque molestias molestiae.<p></p>Minima numquam qui quis quidem voluptatum. Magnam voluptatem qui quia sit sit quasi molestias. Qui exercitationem quo et debitis voluptatem nobis.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(25, 1, 3, 'Et natus harum enim qui omnis.', 'qui-beatae-repellendus-ipsum-ipsam-voluptates', NULL, 'Consequatur fugit officiis nesciunt reprehenderit veritatis cupiditate. Nam quos id occaecati consequatur. Beatae est amet quia quia.', '<p>Quaerat rerum autem error et molestiae est. Fugit quo harum ipsum pariatur et. Exercitationem voluptatem quaerat sint magni eaque commodi.<p></p>Voluptatem est voluptatem qui aperiam molestias non laudantium. Aut ullam laboriosam provident ut minima et adipisci ea.<p></p>Incidunt laborum suscipit earum earum. Autem neque dolore explicabo pariatur explicabo. Rerum inventore quis omnis exercitationem quo facilis.<p></p>Molestiae vel magni ab molestiae qui exercitationem in ducimus. Sapiente consequatur et sed. Assumenda distinctio tempora excepturi velit veniam.<p></p>Cupiditate autem sunt sit quos quos sit perspiciatis. Consectetur beatae ut veritatis vitae cupiditate est. Quo dolore natus id dolorum iure. Dolores tempora debitis veritatis atque consequatur est.</p>', NULL, '2023-09-04 00:28:34', '2023-09-04 00:28:34'),
(27, 1, 1, 'Programing HR', 'programing-hr', 'post-images/XsAKqm79tiBea0ULOulOydhkY6CKUrZ5wY7pgeNZ.jpg', 'program hr', 'program hr', NULL, '2023-09-04 00:42:44', '2023-09-04 00:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Renold Herlandi', 'renoldherlandi', 'herlandi619@gmail.com', NULL, '$2y$10$2fzCIH/gqVd0dG12dTLiUOqCs7qftShYnnhBPuobruXBgvlt/uWXy', NULL, '2023-09-04 00:28:24', '2023-09-04 00:28:24', 1),
(2, 'Kardi Umay Maheswara', 'virman88', 'bakiadi69@example.net', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dawh1OMaCx2yAMjcjplHB7C5cNpud7iObJkB21tNOPPTV5pOfqTFpdrR3Wvy', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 1),
(3, 'Gatra Hutapea', 'rwibisono', 'ksimbolon@example.net', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8Y8RDDgVvI', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 0),
(4, 'Among Sihotang S.I.Kom', 'fyuniar', 'kemal.putra@example.net', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ngbRTMYp9t', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 0),
(5, 'Himawan Nashiruddin', 'jaka.gunarto', 'suartini.paiman@example.org', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jIjG4goNAu', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 0),
(6, 'Kezia Hariyah', 'nsusanti', 'almira39@example.net', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gnk0yHEqjG', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 0),
(7, 'Cindy Mardhiyah', 'ianggraini', 'ssihombing@example.com', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hwSqdV9tQ7', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 0),
(8, 'Kamaria Uyainah', 'wpalastri', 'julia95@example.org', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b5PJUODJAc', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 0),
(9, 'Yulia Rahmawati', 'cakrabirawa80', 'xadriansyah@example.org', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gmYj96Xsxk', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 0),
(10, 'Ade Eka Kuswoyo S.E.', 'maryadi.maras', 'wpranowo@example.org', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kkIxVHtw0q', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 0),
(11, 'Prasetyo Hardiansyah', 'zaenab86', 'hartati.artawan@example.com', '2023-09-04 00:28:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZcP12WsuT8', '2023-09-04 00:28:33', '2023-09-04 00:28:33', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
