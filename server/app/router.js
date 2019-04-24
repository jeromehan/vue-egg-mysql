'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.resources('collect', '/api/collect', controller.collect);

  // router.post('/api/collect', controller.collect.create);
  // router.delete('/api/collect/:id', controller.collect.destroy);
  // router.put('/api/collect/:id', controller.collect.update);
  // router.get('/api/collect', controller.collect.list);
  // router.get('/api/collect/:id', controller.collect.find);
};
