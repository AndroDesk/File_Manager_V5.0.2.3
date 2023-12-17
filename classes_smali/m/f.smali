.class public Lm/f;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/f$b;,
        Lm/f$a;
    }
.end annotation


# static fields
.field public static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"

.field public static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field public final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field public final mActionViewConstructorArguments:[Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lm/f;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Lm/f;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lm/f;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lm/f;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Lm/f;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_13

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lm/f;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_13
    return-object p1
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Lm/f$b;

    move-object/from16 v3, p3

    invoke-direct {v2, v0, v3}, Lm/f$b;-><init>(Lm/f;Landroid/view/Menu;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_f
    const/4 v4, 0x2

    const-string v5, "menu"

    const/4 v6, 0x1

    if-ne v3, v4, :cond_30

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_36

    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expecting menu, got "

    invoke-static {v2, v3}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v6, :cond_280

    :goto_36
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v11, v7

    move v9, v8

    move v10, v9

    :goto_3b
    if-nez v9, :cond_27f

    if-eq v3, v6, :cond_277

    const-string v12, "item"

    const-string v13, "group"

    if-eq v3, v4, :cond_bd

    const/4 v14, 0x3

    if-eq v3, v14, :cond_4a

    goto/16 :goto_247

    :cond_4a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_5c

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5c

    move-object/from16 v12, p1

    move-object v11, v7

    move v10, v8

    goto/16 :goto_271

    :cond_5c
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_70

    iput v8, v2, Lm/f$b;->b:I

    iput v8, v2, Lm/f$b;->c:I

    iput v8, v2, Lm/f$b;->d:I

    iput v8, v2, Lm/f$b;->e:I

    iput-boolean v6, v2, Lm/f$b;->f:Z

    iput-boolean v6, v2, Lm/f$b;->g:Z

    goto/16 :goto_247

    :cond_70
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    iget-boolean v3, v2, Lm/f$b;->h:Z

    if-nez v3, :cond_247

    iget-object v3, v2, Lm/f$b;->z:Lm0/b;

    if-eqz v3, :cond_9d

    invoke-virtual {v3}, Lm0/b;->a()Z

    move-result v3

    if-eqz v3, :cond_9d

    iput-boolean v6, v2, Lm/f$b;->h:Z

    iget-object v3, v2, Lm/f$b;->a:Landroid/view/Menu;

    iget v12, v2, Lm/f$b;->b:I

    iget v13, v2, Lm/f$b;->i:I

    iget v14, v2, Lm/f$b;->j:I

    iget-object v15, v2, Lm/f$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm/f$b;->b(Landroid/view/MenuItem;)V

    goto/16 :goto_247

    :cond_9d
    iput-boolean v6, v2, Lm/f$b;->h:Z

    iget-object v3, v2, Lm/f$b;->a:Landroid/view/Menu;

    iget v12, v2, Lm/f$b;->b:I

    iget v13, v2, Lm/f$b;->i:I

    iget v14, v2, Lm/f$b;->j:I

    iget-object v15, v2, Lm/f$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm/f$b;->b(Landroid/view/MenuItem;)V

    goto/16 :goto_247

    :cond_b2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_247

    move-object/from16 v12, p1

    move v9, v6

    goto/16 :goto_271

    :cond_bd
    if-eqz v10, :cond_c1

    goto/16 :goto_247

    :cond_c1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10a

    iget-object v3, v2, Lm/f$b;->E:Lm/f;

    iget-object v3, v3, Lm/f;->mContext:Landroid/content/Context;

    sget-object v12, Lh/j;->MenuGroup:[I

    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v12, Lh/j;->MenuGroup_android_id:I

    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v2, Lm/f$b;->b:I

    sget v12, Lh/j;->MenuGroup_android_menuCategory:I

    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v2, Lm/f$b;->c:I

    sget v12, Lh/j;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v2, Lm/f$b;->d:I

    sget v12, Lh/j;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    iput v12, v2, Lm/f$b;->e:I

    sget v12, Lh/j;->MenuGroup_android_visible:I

    invoke-virtual {v3, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v2, Lm/f$b;->f:Z

    sget v12, Lh/j;->MenuGroup_android_enabled:I

    invoke-virtual {v3, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v2, Lm/f$b;->g:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_247

    :cond_10a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24a

    iget-object v3, v2, Lm/f$b;->E:Lm/f;

    iget-object v3, v3, Lm/f;->mContext:Landroid/content/Context;

    sget-object v12, Lh/j;->MenuItem:[I

    new-instance v13, Landroidx/appcompat/widget/y0;

    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-direct {v13, v3, v12}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    sget v3, Lh/j;->MenuItem_android_id:I

    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v3

    iput v3, v2, Lm/f$b;->i:I

    sget v3, Lh/j;->MenuItem_android_menuCategory:I

    iget v12, v2, Lm/f$b;->c:I

    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v3

    sget v12, Lh/j;->MenuItem_android_orderInCategory:I

    iget v14, v2, Lm/f$b;->d:I

    invoke-virtual {v13, v12, v14}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v12

    const/high16 v14, -0x10000

    and-int/2addr v3, v14

    const v14, 0xffff

    and-int/2addr v12, v14

    or-int/2addr v3, v12

    iput v3, v2, Lm/f$b;->j:I

    sget v3, Lh/j;->MenuItem_android_title:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lm/f$b;->k:Ljava/lang/CharSequence;

    sget v3, Lh/j;->MenuItem_android_titleCondensed:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lm/f$b;->l:Ljava/lang/CharSequence;

    sget v3, Lh/j;->MenuItem_android_icon:I

    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v3

    iput v3, v2, Lm/f$b;->m:I

    sget v3, Lh/j;->MenuItem_android_alphabeticShortcut:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_163

    move v3, v8

    goto :goto_167

    :cond_163
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_167
    iput-char v3, v2, Lm/f$b;->n:C

    sget v3, Lh/j;->MenuItem_alphabeticModifiers:I

    const/16 v12, 0x1000

    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v3

    iput v3, v2, Lm/f$b;->o:I

    sget v3, Lh/j;->MenuItem_android_numericShortcut:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17d

    move v3, v8

    goto :goto_181

    :cond_17d
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_181
    iput-char v3, v2, Lm/f$b;->p:C

    sget v3, Lh/j;->MenuItem_numericModifiers:I

    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v3

    iput v3, v2, Lm/f$b;->q:I

    sget v3, Lh/j;->MenuItem_android_checkable:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v12

    if-eqz v12, :cond_19a

    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result v3

    iput v3, v2, Lm/f$b;->r:I

    goto :goto_19e

    :cond_19a
    iget v3, v2, Lm/f$b;->e:I

    iput v3, v2, Lm/f$b;->r:I

    :goto_19e
    sget v3, Lh/j;->MenuItem_android_checked:I

    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result v3

    iput-boolean v3, v2, Lm/f$b;->s:Z

    sget v3, Lh/j;->MenuItem_android_visible:I

    iget-boolean v12, v2, Lm/f$b;->f:Z

    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result v3

    iput-boolean v3, v2, Lm/f$b;->t:Z

    sget v3, Lh/j;->MenuItem_android_enabled:I

    iget-boolean v12, v2, Lm/f$b;->g:Z

    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result v3

    iput-boolean v3, v2, Lm/f$b;->u:Z

    sget v3, Lh/j;->MenuItem_showAsAction:I

    const/4 v12, -0x1

    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v3

    iput v3, v2, Lm/f$b;->v:I

    sget v3, Lh/j;->MenuItem_android_onClick:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lm/f$b;->y:Ljava/lang/String;

    sget v3, Lh/j;->MenuItem_actionLayout:I

    invoke-virtual {v13, v3, v8}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result v3

    iput v3, v2, Lm/f$b;->w:I

    sget v3, Lh/j;->MenuItem_actionViewClass:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lm/f$b;->x:Ljava/lang/String;

    sget v3, Lh/j;->MenuItem_actionProviderClass:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->j(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e5

    move v14, v6

    goto :goto_1e6

    :cond_1e5
    move v14, v8

    :goto_1e6
    if-eqz v14, :cond_1ff

    iget v15, v2, Lm/f$b;->w:I

    if-nez v15, :cond_1ff

    iget-object v15, v2, Lm/f$b;->x:Ljava/lang/String;

    if-nez v15, :cond_1ff

    sget-object v14, Lm/f;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v15, v2, Lm/f$b;->E:Lm/f;

    iget-object v15, v15, Lm/f;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v14, v15}, Lm/f$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/b;

    iput-object v3, v2, Lm/f$b;->z:Lm0/b;

    goto :goto_20a

    :cond_1ff
    if-eqz v14, :cond_208

    const-string v3, "SupportMenuInflater"

    const-string v14, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v3, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_208
    iput-object v7, v2, Lm/f$b;->z:Lm0/b;

    :goto_20a
    sget v3, Lh/j;->MenuItem_contentDescription:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lm/f$b;->A:Ljava/lang/CharSequence;

    sget v3, Lh/j;->MenuItem_tooltipText:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lm/f$b;->B:Ljava/lang/CharSequence;

    sget v3, Lh/j;->MenuItem_iconTintMode:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v14

    if-eqz v14, :cond_22f

    invoke-virtual {v13, v3, v12}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result v3

    iget-object v12, v2, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v12}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, v2, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    goto :goto_231

    :cond_22f
    iput-object v7, v2, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    :goto_231
    sget v3, Lh/j;->MenuItem_iconTint:I

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->l(I)Z

    move-result v12

    if-eqz v12, :cond_240

    invoke-virtual {v13, v3}, Landroidx/appcompat/widget/y0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Lm/f$b;->C:Landroid/content/res/ColorStateList;

    goto :goto_242

    :cond_240
    iput-object v7, v2, Lm/f$b;->C:Landroid/content/res/ColorStateList;

    :goto_242
    invoke-virtual {v13}, Landroidx/appcompat/widget/y0;->n()V

    iput-boolean v8, v2, Lm/f$b;->h:Z

    :cond_247
    :goto_247
    move-object/from16 v12, p1

    goto :goto_271

    :cond_24a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26d

    iput-boolean v6, v2, Lm/f$b;->h:Z

    iget-object v3, v2, Lm/f$b;->a:Landroid/view/Menu;

    iget v12, v2, Lm/f$b;->b:I

    iget v13, v2, Lm/f$b;->i:I

    iget v14, v2, Lm/f$b;->j:I

    iget-object v15, v2, Lm/f$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v3, v12, v13, v14, v15}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v12

    invoke-virtual {v2, v12}, Lm/f$b;->b(Landroid/view/MenuItem;)V

    move-object/from16 v12, p1

    invoke-direct {v0, v12, v1, v3}, Lm/f;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_271

    :cond_26d
    move-object/from16 v12, p1

    move-object v11, v3

    move v10, v6

    :goto_271
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_3b

    :cond_277
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected end of document"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27f
    return-void

    :cond_280
    move-object/from16 v12, p1

    goto/16 :goto_f
.end method


# virtual methods
.method public getRealOwner()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lm/f;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_c

    iget-object v0, p0, Lm/f;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lm/f;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lm/f;->mRealOwner:Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lm/f;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .registers 6

    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Lh0/a;

    if-nez v1, :cond_a

    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lm/f;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-direct {p0, v1, p1, p2}, Lm/f;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1c} :catch_2b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_24
    .catchall {:try_start_b .. :try_end_1c} :catchall_22

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_21
    return-void

    :catchall_22
    move-exception p1

    goto :goto_32

    :catch_24
    move-exception p1

    :try_start_25
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2b
    move-exception p1

    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_22

    :goto_32
    if-eqz v1, :cond_37

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_37
    throw p1
.end method
