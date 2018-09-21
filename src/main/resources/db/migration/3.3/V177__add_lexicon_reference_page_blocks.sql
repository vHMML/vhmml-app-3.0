INSERT INTO `vhmml`.`blocks` (`id`, `name`, `display_name`, `style_name`, `section`, `is_enabled`) VALUES ('20', 'referenceHeaderBlock', 'Reference Header Block', 'reference-header-block', 'REFERENCE', '1');
INSERT INTO `vhmml`.`blocks` (`id`, `name`, `display_name`, `style_name`, `section`, `is_enabled`) VALUES ('21', 'lexiconHeaderBlock', 'Lexicon Header Block', 'lexicon-header-block', 'LEXICON', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `is_enabled`) VALUES ('20', 'reference-header-block-image-1', 'IMAGE', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('20', 'reference-header-block-heading', 'HEADING', 'Reference', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('20', 'reference-header-block-heading-color', 'HEADINGCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('20', 'reference-header-block-content', 'CONTENT', 'Searchable bibliographical resources', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('20', 'reference-header-block-content-color', 'CONTENTCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('20', 'reference-header-block-overlay-color', 'OVERLAYCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('20', 'reference-header-block-overlay-opacity', 'OVERLAYOPACITY', '0', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('20', 'reference-header-block-background-color', 'BACKGROUNDCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('20', 'reference-header-block-url', 'URL', '/reference', '1');

INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `is_enabled`) VALUES ('21', 'lexicon-header-block-image-1', 'IMAGE', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('21', 'lexicon-header-block-heading', 'HEADING', 'Lexicon', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('21', 'lexicon-header-block-heading-color', 'HEADINGCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('21', 'lexicon-header-block-content', 'CONTENT', 'Terms used in manuscript studies', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('21', 'lexicon-header-block-content-color', 'CONTENTCOLOR', '#FFFFFF', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('21', 'lexicon-header-block-overlay-color', 'OVERLAYCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('21', 'lexicon-header-block-overlay-opacity', 'OVERLAYOPACITY', '0', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('21', 'lexicon-header-block-background-color', 'BACKGROUNDCOLOR', '#000000', '1');
INSERT INTO `vhmml`.`block_components` (`block_id`, `style_name`, `type`, `value`, `is_enabled`) VALUES ('21', 'lexicon-header-block-url', 'URL', '/lexicon', '1');