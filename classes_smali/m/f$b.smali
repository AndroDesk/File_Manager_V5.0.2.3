.class public final Lm/f$b;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Lm/f;

.field public a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Lm0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm/f;Landroid/view/Menu;)V
    .registers 3

    iput-object p1, p0, Lm/f$b;->E:Lm/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lm/f$b;->C:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lm/f$b;->a:Landroid/view/Menu;

    const/4 p1, 0x0

    iput p1, p0, Lm/f$b;->b:I

    iput p1, p0, Lm/f$b;->c:I

    iput p1, p0, Lm/f$b;->d:I

    iput p1, p0, Lm/f$b;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm/f$b;->f:Z

    iput-boolean p1, p0, Lm/f$b;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lm/f$b;->E:Lm/f;

    iget-object v1, v1, Lm/f;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Landroid/view/MenuItem;)V
    .registers 9

    iget-boolean v0, p0, Lm/f$b;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lm/f$b;->t:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lm/f$b;->u:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lm/f$b;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1a

    move v1, v3

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lm/f$b;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lm/f$b;->m:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v0, p0, Lm/f$b;->v:I

    if-ltz v0, :cond_31

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_31
    iget-object v0, p0, Lm/f$b;->y:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lm/f$b;->E:Lm/f;

    iget-object v0, v0, Lm/f;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Lm/f$a;

    iget-object v1, p0, Lm/f$b;->E:Lm/f;

    invoke-virtual {v1}, Lm/f;->getRealOwner()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lm/f$b;->y:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lm/f$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_58

    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    :goto_58
    iget v0, p0, Lm/f$b;->r:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9d

    instance-of v0, p1, Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_68

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/j;->d(Z)V

    goto :goto_9d

    :cond_68
    instance-of v0, p1, Landroidx/appcompat/view/menu/k;

    if-eqz v0, :cond_9d

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/k;

    :try_start_6f
    iget-object v1, v0, Landroidx/appcompat/view/menu/k;->e:Ljava/lang/reflect/Method;

    if-nez v1, :cond_87

    iget-object v1, v0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setExclusiveCheckable"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/k;->e:Ljava/lang/reflect/Method;

    :cond_87
    iget-object v1, v0, Landroidx/appcompat/view/menu/k;->e:Ljava/lang/reflect/Method;

    iget-object v0, v0, Landroidx/appcompat/view/menu/k;->d:Lh0/b;

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_94} :catch_95

    goto :goto_9d

    :catch_95
    move-exception v0

    const-string v1, "MenuItemWrapper"

    const-string v4, "Error while calling setExclusiveCheckable"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9d
    :goto_9d
    iget-object v0, p0, Lm/f$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_b1

    sget-object v1, Lm/f;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v2, p0, Lm/f$b;->E:Lm/f;

    iget-object v2, v2, Lm/f;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lm/f$b;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    :cond_b1
    iget v0, p0, Lm/f$b;->w:I

    if-lez v0, :cond_c2

    if-nez v2, :cond_bb

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_c2

    :cond_bb
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    :goto_c2
    iget-object v0, p0, Lm/f$b;->z:Lm0/b;

    if-eqz v0, :cond_d8

    instance-of v1, p1, Lh0/b;

    if-eqz v1, :cond_d1

    move-object v1, p1

    check-cast v1, Lh0/b;

    invoke-interface {v1, v0}, Lh0/b;->setSupportActionProvider(Lm0/b;)Lh0/b;

    goto :goto_d8

    :cond_d1
    const-string v0, "MenuItemCompat"

    const-string v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    :goto_d8
    iget-object v0, p0, Lm/f$b;->A:Ljava/lang/CharSequence;

    instance-of v1, p1, Lh0/b;

    const/16 v2, 0x1a

    if-eqz v1, :cond_e7

    move-object v3, p1

    check-cast v3, Lh0/b;

    invoke-interface {v3, v0}, Lh0/b;->setContentDescription(Ljava/lang/CharSequence;)Lh0/b;

    goto :goto_ee

    :cond_e7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_ee

    invoke-static {p1, v0}, Lm0/n;->h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_ee
    :goto_ee
    iget-object v0, p0, Lm/f$b;->B:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f9

    move-object v3, p1

    check-cast v3, Lh0/b;

    invoke-interface {v3, v0}, Lh0/b;->setTooltipText(Ljava/lang/CharSequence;)Lh0/b;

    goto :goto_100

    :cond_f9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_100

    invoke-static {p1, v0}, Lm0/n;->m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_100
    :goto_100
    iget-char v0, p0, Lm/f$b;->n:C

    iget v3, p0, Lm/f$b;->o:I

    if-eqz v1, :cond_10d

    move-object v4, p1

    check-cast v4, Lh0/b;

    invoke-interface {v4, v0, v3}, Lh0/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_114

    :cond_10d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_114

    invoke-static {p1, v0, v3}, Lm0/n;->g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :cond_114
    :goto_114
    iget-char v0, p0, Lm/f$b;->p:C

    iget v3, p0, Lm/f$b;->q:I

    if-eqz v1, :cond_121

    move-object v4, p1

    check-cast v4, Lh0/b;

    invoke-interface {v4, v0, v3}, Lh0/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_128

    :cond_121
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_128

    invoke-static {p1, v0, v3}, Lm0/n;->k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :cond_128
    :goto_128
    iget-object v0, p0, Lm/f$b;->D:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_13c

    if-eqz v1, :cond_135

    move-object v3, p1

    check-cast v3, Lh0/b;

    invoke-interface {v3, v0}, Lh0/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_13c

    :cond_135
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_13c

    invoke-static {p1, v0}, Lm0/n;->j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :cond_13c
    :goto_13c
    iget-object v0, p0, Lm/f$b;->C:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_14f

    if-eqz v1, :cond_148

    check-cast p1, Lh0/b;

    invoke-interface {p1, v0}, Lh0/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_14f

    :cond_148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_14f

    invoke-static {p1, v0}, Lm0/n;->i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_14f
    :goto_14f
    return-void
.end method
