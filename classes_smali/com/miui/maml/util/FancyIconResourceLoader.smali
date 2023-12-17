.class public Lcom/miui/maml/util/FancyIconResourceLoader;
.super Lcom/miui/maml/ResourceLoader;
.source "FancyIconResourceLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FancyIconResourceLoader"


# instance fields
.field private mRelatviePathBaseIcons:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/ResourceLoader;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "FancyIconResourceLoader"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/maml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 6

    .line 1
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/miui/maml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    .line 12
    invoke-static {v1, v2, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public resourceExists(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/miui/maml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    .line 12
    invoke-static {v1, v2, p1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method
