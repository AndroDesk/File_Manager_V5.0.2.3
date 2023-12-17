.class public final Lm/c;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/c$a;
    }
.end annotation


# static fields
.field public static f:Landroid/content/res/Configuration;


# instance fields
.field public a:I

.field public b:Landroid/content/res/Resources$Theme;

.field public c:Landroid/view/LayoutInflater;

.field public d:Landroid/content/res/Configuration;

.field public e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 3
    iput p2, p0, Lm/c;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 5
    iput-object p2, p0, Lm/c;->b:Landroid/content/res/Resources$Theme;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm/c;->e:Landroid/content/res/Resources;

    .line 3
    if-nez v0, :cond_18

    .line 5
    iget-object v0, p0, Lm/c;->d:Landroid/content/res/Configuration;

    .line 7
    if-nez v0, :cond_10

    .line 9
    new-instance v0, Landroid/content/res/Configuration;

    .line 11
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 14
    iput-object v0, p0, Lm/c;->d:Landroid/content/res/Configuration;

    .line 16
    return-void

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    const-string v0, "Override configuration has already been set"

    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    const-string v0, "getResources() or getAssets() has already been called"

    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lm/c;->b:Landroid/content/res/Resources$Theme;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-eqz v0, :cond_23

    .line 11
    invoke-virtual {p0}, Lm/c;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lm/c;->b:Landroid/content/res/Resources$Theme;

    .line 21
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_23

    .line 31
    iget-object v2, p0, Lm/c;->b:Landroid/content/res/Resources$Theme;

    .line 33
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 36
    :cond_23
    iget-object v0, p0, Lm/c;->b:Landroid/content/res/Resources$Theme;

    .line 38
    iget v2, p0, Lm/c;->a:I

    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 43
    return-void
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lm/c;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 4

    .line 1
    iget-object v0, p0, Lm/c;->e:Landroid/content/res/Resources;

    .line 3
    if-nez v0, :cond_38

    .line 5
    iget-object v0, p0, Lm/c;->d:Landroid/content/res/Configuration;

    .line 7
    if-eqz v0, :cond_32

    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    const/16 v2, 0x1a

    .line 13
    if-lt v1, v2, :cond_25

    .line 15
    sget-object v1, Lm/c;->f:Landroid/content/res/Configuration;

    .line 17
    if-nez v1, :cond_1c

    .line 19
    new-instance v1, Landroid/content/res/Configuration;

    .line 21
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 24
    const/4 v2, 0x0

    .line 25
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 27
    sput-object v1, Lm/c;->f:Landroid/content/res/Configuration;

    .line 29
    :cond_1c
    sget-object v1, Lm/c;->f:Landroid/content/res/Configuration;

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_25

    .line 37
    goto :goto_32

    .line 38
    :cond_25
    iget-object v0, p0, Lm/c;->d:Landroid/content/res/Configuration;

    .line 40
    invoke-static {p0, v0}, Lm/c$a;->a(Lm/c;Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lm/c;->e:Landroid/content/res/Resources;

    .line 50
    goto :goto_38

    .line 51
    :cond_32
    :goto_32
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lm/c;->e:Landroid/content/res/Resources;

    .line 57
    :cond_38
    :goto_38
    iget-object v0, p0, Lm/c;->e:Landroid/content/res/Resources;

    .line 59
    return-object v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-string v0, "layout_inflater"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1d

    .line 9
    iget-object p1, p0, Lm/c;->c:Landroid/view/LayoutInflater;

    .line 11
    if-nez p1, :cond_1a

    .line 13
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lm/c;->c:Landroid/view/LayoutInflater;

    .line 27
    :cond_1a
    iget-object p1, p0, Lm/c;->c:Landroid/view/LayoutInflater;

    .line 29
    return-object p1

    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 1
    iget-object v0, p0, Lm/c;->b:Landroid/content/res/Resources$Theme;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    iget v0, p0, Lm/c;->a:I

    .line 8
    if-nez v0, :cond_d

    .line 10
    sget v0, Lh/i;->Theme_AppCompat_Light:I

    .line 12
    iput v0, p0, Lm/c;->a:I

    .line 14
    :cond_d
    invoke-virtual {p0}, Lm/c;->b()V

    .line 17
    iget-object v0, p0, Lm/c;->b:Landroid/content/res/Resources$Theme;

    .line 19
    return-object v0
.end method

.method public final setTheme(I)V
    .registers 3

    .line 1
    iget v0, p0, Lm/c;->a:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lm/c;->a:I

    .line 7
    invoke-virtual {p0}, Lm/c;->b()V

    .line 10
    :cond_9
    return-void
.end method
