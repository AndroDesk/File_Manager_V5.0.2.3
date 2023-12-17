.class public Lcom/miui/maml/ScreenElementRootFactory;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ScreenElementRootFactory$Parameter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ScreenElementRoot;
    .registers 9

    .line 1
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->access$000(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->access$100(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ResourceLoader;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->access$200(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    if-nez v1, :cond_2c

    .line 18
    if-eqz p0, :cond_2c

    .line 20
    invoke-static {p0}, La/a;->A(Ljava/lang/String;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2c

    .line 26
    new-instance v1, Lcom/miui/maml/util/ZipResourceLoader;

    .line 28
    invoke-direct {v1, p0}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    move-result-object p0

    .line 39
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 41
    invoke-virtual {v1, p0}, Lcom/miui/maml/ResourceLoader;->setLocal(Ljava/util/Locale;)Lcom/miui/maml/ResourceLoader;

    .line 44
    move-result-object v1

    .line 45
    :cond_2c
    move-object v3, v1

    .line 46
    if-nez v3, :cond_31

    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_31
    new-instance p0, Lcom/miui/maml/LifecycleResourceManager;

    .line 52
    const-wide/32 v4, 0x36ee80

    .line 55
    const-wide/32 v6, 0x57e40

    .line 58
    move-object v2, p0

    .line 59
    invoke-direct/range {v2 .. v7}, Lcom/miui/maml/LifecycleResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;JJ)V

    .line 62
    new-instance v1, Lcom/miui/maml/ScreenContext;

    .line 64
    invoke-direct {v1, v0, p0}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    .line 67
    new-instance p0, Lcom/miui/maml/ScreenElementRoot;

    .line 69
    invoke-direct {p0, v1}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 72
    return-object p0
.end method
