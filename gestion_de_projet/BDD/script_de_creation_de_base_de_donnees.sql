CREATE TABLE `USER` (
  `id` integer,
  `pseudonym` string,
  `email` string,
  `phoneNumber` string,
  `city` string,
  `postalCode` number,
  `password` string,
  `points` number,
  `grade` string,
  `rib` string
);

CREATE TABLE `PROJECT` (
  `id` integer,
  `userId` integer,
  `title` string,
  `bannerUrl` string,
  `websiteUrl` string,
  `description` string,
  `budget` number,
  `comments` number,
  `maximumComments` number
);

CREATE TABLE `SCENARIO` (
  `id` integer,
  `projectId` integer,
  `commentId` integer,
  `title` string
);

CREATE TABLE `PAGE` (
  `id` integer,
  `projectId` integer,
  `commentId` integer,
  `title` string,
  `url` string
);

CREATE TABLE `MEMO_SHEET` (
  `id` integer,
  `planUrl` string,
  `title` string,
  `observation` string,
  `utility` string,
  `advice` string,
  `state` bolean
);

CREATE TABLE `FAVORITE` (
  `userId` integer,
  `projectId` number
);

CREATE TABLE `COMMENT` (
  `id` integer,
  `userId` integer,
  `projectId` number,
  `content` string,
  `likedScenarios` string,
  `likedPages` string,
  `rank` number,
  `submitDate` date
);

CREATE TABLE `SCENARIO_HAS_PAGE` (
  `scenarioId` integer,
  `pageId` integer
);

CREATE TABLE `USER_HAS_MEMO_SHEET` (
  `userId` integer,
  `memoSheetId` integer
);

ALTER TABLE `PROJECT` ADD FOREIGN KEY (`userId`) REFERENCES `USER` (`id`);

ALTER TABLE `SCENARIO` ADD FOREIGN KEY (`projectId`) REFERENCES `PROJECT` (`id`);

ALTER TABLE `PAGE` ADD FOREIGN KEY (`projectId`) REFERENCES `PROJECT` (`id`);

ALTER TABLE `SCENARIO` ADD FOREIGN KEY (`projectId`) REFERENCES `COMMENT` (`id`);

ALTER TABLE `PAGE` ADD FOREIGN KEY (`projectId`) REFERENCES `COMMENT` (`id`);

ALTER TABLE `SCENARIO_HAS_PAGE` ADD FOREIGN KEY (`scenarioId`) REFERENCES `SCENARIO` (`id`);

ALTER TABLE `SCENARIO_HAS_PAGE` ADD FOREIGN KEY (`pageId`) REFERENCES `PAGE` (`id`);

ALTER TABLE `FAVORITE` ADD FOREIGN KEY (`userId`) REFERENCES `USER` (`id`);

ALTER TABLE `FAVORITE` ADD FOREIGN KEY (`projectId`) REFERENCES `PROJECT` (`id`);

ALTER TABLE `COMMENT` ADD FOREIGN KEY (`userId`) REFERENCES `USER` (`id`);

ALTER TABLE `COMMENT` ADD FOREIGN KEY (`projectId`) REFERENCES `PROJECT` (`id`);

ALTER TABLE `USER_HAS_MEMO_SHEET` ADD FOREIGN KEY (`userId`) REFERENCES `USER` (`id`);

ALTER TABLE `USER_HAS_MEMO_SHEET` ADD FOREIGN KEY (`memoSheetId`) REFERENCES `MEMO_SHEET` (`id`);
