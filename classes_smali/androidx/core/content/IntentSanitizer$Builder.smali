.class public final Landroidx/core/content/IntentSanitizer$Builder;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final HISTORY_STACK_FLAGS:I = 0x7debf000

.field private static final RECEIVER_FLAGS:I = 0x78200000


# instance fields
.field private mAllowAnyComponent:Z

.field private mAllowClipDataText:Z

.field private mAllowIdentifier:Z

.field private mAllowSelector:Z

.field private mAllowSomeComponents:Z

.field private mAllowSourceBounds:Z

.field private mAllowedActions:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedCategories:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipData:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedClipDataUri:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedComponents:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedData:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ll0/f<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAllowedFlags:I

.field private mAllowedPackages:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedTypes:Ll0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/core/content/d;

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 10
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedActions:Ll0/f;

    .line 12
    new-instance v0, Landroidx/core/content/d;

    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 18
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedData:Ll0/f;

    .line 20
    new-instance v0, Landroidx/core/content/d;

    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 26
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedTypes:Ll0/f;

    .line 28
    new-instance v0, Landroidx/core/content/d;

    .line 30
    const/4 v1, 0x5

    .line 31
    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 34
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedCategories:Ll0/f;

    .line 36
    new-instance v0, Landroidx/core/content/d;

    .line 38
    const/4 v1, 0x6

    .line 39
    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 42
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedPackages:Ll0/f;

    .line 44
    new-instance v0, Landroidx/core/content/d;

    .line 46
    const/4 v1, 0x7

    .line 47
    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 50
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Ll0/f;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    .line 54
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedExtras:Ljava/util/Map;

    .line 59
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowClipDataText:Z

    .line 62
    new-instance v0, Landroidx/core/content/d;

    .line 64
    const/16 v1, 0x8

    .line 66
    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 69
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipDataUri:Ll0/f;

    .line 71
    new-instance v0, Landroidx/core/content/d;

    .line 73
    const/16 v1, 0x9

    .line 75
    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 78
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipData:Ll0/f;

    .line 80
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/net/Uri;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$6(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtraOutput$16(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroid/content/ComponentName;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowAnyComponent$10(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtra$14(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowClipDataUriWithAuthority$11(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$4(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroid/net/Uri;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$1(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowDataWithAuthority$8(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtra$12(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$allowAnyComponent$10(Landroid/content/ComponentName;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$allowClipDataUriWithAuthority$11(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$allowComponentWithPackage$9(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$allowDataWithAuthority$8(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$allowExtra$12(Ljava/lang/Object;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$allowExtra$13(Ljava/lang/Class;Ll0/f;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_12

    .line 7
    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0}, Ll0/f;->test(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method private static synthetic lambda$allowExtra$14(Ljava/lang/Object;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$allowExtraOutput$16(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$allowExtraStreamUriWithAuthority$15(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$1(Landroid/net/Uri;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$2(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$3(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$4(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$5(Landroid/content/ComponentName;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$6(Landroid/net/Uri;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$new$7(Landroid/content/ClipData;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic m(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowComponentWithPackage$9(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtraStreamUriWithAuthority$15(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Landroid/content/ComponentName;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$5(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Ljava/lang/Class;Ll0/f;Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtra$13(Ljava/lang/Class;Ll0/f;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Landroid/content/ClipData;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$new$7(Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public allowAction(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Landroidx/core/content/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowAction(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowAction(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedActions:Ll0/f;

    invoke-interface {v0, p1}, Ll0/f;->a(Ll0/f;)Landroidx/core/content/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedActions:Ll0/f;

    return-object p0
.end method

.method public allowAnyComponent()Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowAnyComponent:Z

    .line 4
    new-instance v0, Landroidx/core/content/d;

    .line 6
    const/16 v1, 0xa

    .line 8
    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 11
    iput-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Ll0/f;

    .line 13
    return-object p0
.end method

.method public allowCategory(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroidx/core/content/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowCategory(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowCategory(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedCategories:Ll0/f;

    invoke-interface {v0, p1}, Ll0/f;->a(Ll0/f;)Landroidx/core/content/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedCategories:Ll0/f;

    return-object p0
.end method

.method public allowClipData(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Landroid/content/ClipData;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipData:Ll0/f;

    .line 6
    invoke-interface {v0, p1}, Ll0/f;->a(Ll0/f;)Landroidx/core/content/f;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipData:Ll0/f;

    .line 12
    return-object p0
.end method

.method public allowClipDataText()Landroidx/core/content/IntentSanitizer$Builder;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowClipDataText:Z

    .line 4
    return-object p0
.end method

.method public allowClipDataUri(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipDataUri:Ll0/f;

    .line 6
    invoke-interface {v0, p1}, Ll0/f;->a(Ll0/f;)Landroidx/core/content/f;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipDataUri:Ll0/f;

    .line 12
    return-object p0
.end method

.method public allowClipDataUriWithAuthority(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroidx/core/content/e;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, v1}, Landroidx/core/content/e;-><init>(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowClipDataUri(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public allowComponent(Landroid/content/ComponentName;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroidx/core/content/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/core/content/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowComponent(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowComponent(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSomeComponents:Z

    .line 5
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Ll0/f;

    invoke-interface {v0, p1}, Ll0/f;->a(Ll0/f;)Landroidx/core/content/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Ll0/f;

    return-object p0
.end method

.method public allowComponentWithPackage(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroidx/core/content/e;

    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, p1, v1}, Landroidx/core/content/e;-><init>(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowComponent(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public allowData(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedData:Ll0/f;

    .line 6
    invoke-interface {v0, p1}, Ll0/f;->a(Ll0/f;)Landroidx/core/content/f;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedData:Ll0/f;

    .line 12
    return-object p0
.end method

.method public allowDataWithAuthority(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroidx/core/content/e;

    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, p1, v1}, Landroidx/core/content/e;-><init>(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowData(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 13
    return-object p0
.end method

.method public allowExtra(Ljava/lang/String;Ljava/lang/Class;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 11
    new-instance v0, Landroidx/core/content/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowExtra(Ljava/lang/String;Ljava/lang/Class;Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ll0/f<",
            "TT;>;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Landroidx/core/content/f;

    invoke-direct {v0, p2, p3}, Landroidx/core/content/f;-><init>(Ljava/lang/Class;Ll0/f;)V

    invoke-virtual {p0, p1, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowExtra(Ljava/lang/String;Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ll0/f<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/f;

    if-nez v0, :cond_16

    .line 8
    new-instance v0, Landroidx/core/content/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/content/d;-><init>(I)V

    .line 9
    :cond_16
    invoke-interface {v0, p2}, Ll0/f;->a(Ll0/f;)Landroidx/core/content/f;

    move-result-object p2

    .line 10
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public allowExtraOutput(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/net/Uri;

    new-instance v1, Landroidx/core/content/e;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2}, Landroidx/core/content/e;-><init>(Ljava/lang/String;I)V

    const-string p1, "output"

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowExtraOutput(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 2
    const-class v0, Landroid/net/Uri;

    const-string v1, "output"

    invoke-virtual {p0, v1, v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    return-object p0
.end method

.method public allowExtraStream(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/net/Uri;

    .line 3
    const-string v1, "android.intent.extra.STREAM"

    .line 5
    invoke-virtual {p0, v1, v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 8
    return-object p0
.end method

.method public allowExtraStreamUriWithAuthority(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-class v0, Landroid/net/Uri;

    .line 6
    new-instance v1, Landroidx/core/content/e;

    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-direct {v1, p1, v2}, Landroidx/core/content/e;-><init>(Ljava/lang/String;I)V

    .line 12
    const-string p1, "android.intent.extra.STREAM"

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/content/IntentSanitizer$Builder;->allowExtra(Ljava/lang/String;Ljava/lang/Class;Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    .line 17
    return-object p0
.end method

.method public allowFlags(I)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 6
    return-object p0
.end method

.method public allowHistoryStackFlags()Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 3
    const v1, 0x7debf000

    .line 6
    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 9
    return-object p0
.end method

.method public allowIdentifier()Landroidx/core/content/IntentSanitizer$Builder;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowIdentifier:Z

    .line 4
    return-object p0
.end method

.method public allowPackage(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/core/content/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowPackage(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowPackage(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedPackages:Ll0/f;

    invoke-interface {v0, p1}, Ll0/f;->a(Ll0/f;)Landroidx/core/content/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedPackages:Ll0/f;

    return-object p0
.end method

.method public allowReceiverFlags()Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 3
    const/high16 v1, 0x78200000

    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 8
    return-object p0
.end method

.method public allowSelector()Landroidx/core/content/IntentSanitizer$Builder;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSelector:Z

    .line 4
    return-object p0
.end method

.method public allowSourceBounds()Landroidx/core/content/IntentSanitizer$Builder;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSourceBounds:Z

    .line 4
    return-object p0
.end method

.method public allowType(Ljava/lang/String;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroidx/core/content/e;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/core/content/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroidx/core/content/IntentSanitizer$Builder;->allowType(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public allowType(Ll0/f;)Landroidx/core/content/IntentSanitizer$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BuilderSetStyle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/f<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/IntentSanitizer$Builder;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedTypes:Ll0/f;

    invoke-interface {v0, p1}, Ll0/f;->a(Ll0/f;)Landroidx/core/content/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedTypes:Ll0/f;

    return-object p0
.end method

.method public build()Landroidx/core/content/IntentSanitizer;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowAnyComponent:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSomeComponents:Z

    .line 7
    if-nez v1, :cond_f

    .line 9
    :cond_8
    if-nez v0, :cond_17

    .line 11
    iget-boolean v0, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSomeComponents:Z

    .line 13
    if-eqz v0, :cond_f

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    .line 18
    const-string v1, "You must call either allowAnyComponent or one or more of the allowComponent methods; but not both."

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0

    .line 24
    :cond_17
    :goto_17
    new-instance v0, Landroidx/core/content/IntentSanitizer;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Landroidx/core/content/IntentSanitizer;-><init>(Landroidx/core/content/IntentSanitizer$1;)V

    .line 30
    iget v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedFlags:I

    .line 32
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$102(Landroidx/core/content/IntentSanitizer;I)I

    .line 35
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedActions:Ll0/f;

    .line 37
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$202(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;

    .line 40
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedData:Ll0/f;

    .line 42
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$302(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;

    .line 45
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedTypes:Ll0/f;

    .line 47
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$402(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;

    .line 50
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedCategories:Ll0/f;

    .line 52
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$502(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;

    .line 55
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedPackages:Ll0/f;

    .line 57
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$602(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;

    .line 60
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowAnyComponent:Z

    .line 62
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$702(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 65
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedComponents:Ll0/f;

    .line 67
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$802(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;

    .line 70
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedExtras:Ljava/util/Map;

    .line 72
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$902(Landroidx/core/content/IntentSanitizer;Ljava/util/Map;)Ljava/util/Map;

    .line 75
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowClipDataText:Z

    .line 77
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1002(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 80
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipDataUri:Ll0/f;

    .line 82
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1102(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;

    .line 85
    iget-object v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowedClipData:Ll0/f;

    .line 87
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1202(Landroidx/core/content/IntentSanitizer;Ll0/f;)Ll0/f;

    .line 90
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowIdentifier:Z

    .line 92
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1302(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 95
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSelector:Z

    .line 97
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1402(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 100
    iget-boolean v1, p0, Landroidx/core/content/IntentSanitizer$Builder;->mAllowSourceBounds:Z

    .line 102
    invoke-static {v0, v1}, Landroidx/core/content/IntentSanitizer;->access$1502(Landroidx/core/content/IntentSanitizer;Z)Z

    .line 105
    return-object v0
.end method
