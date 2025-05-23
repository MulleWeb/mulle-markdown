#ifndef mulle_markdown_version_h__
#define mulle_markdown_version_h__

/*
 *  version:  major, minor, patch
 */
#define MULLE__MARKDOWN_VERSION  ((0UL << 20) | (1 << 8) | 6)


static inline unsigned int   mulle_markdown_get_version_major( void)
{
   return( MULLE__MARKDOWN_VERSION >> 20);
}


static inline unsigned int   mulle_markdown_get_version_minor( void)
{
   return( (MULLE__MARKDOWN_VERSION >> 8) & 0xFFF);
}


static inline unsigned int   mulle_markdown_get_version_patch( void)
{
   return( MULLE__MARKDOWN_VERSION & 0xFF);
}

#endif
