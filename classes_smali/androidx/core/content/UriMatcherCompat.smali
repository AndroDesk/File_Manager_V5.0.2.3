.class public Landroidx/core/content/UriMatcherCompat;
.super Ljava/lang/Object;
.source "UriMatcherCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/content/UriMatcher;Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/content/UriMatcherCompat;->lambda$asPredicate$0(Landroid/content/UriMatcher;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static asPredicate(Landroid/content/UriMatcher;)Ll0/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/UriMatcher;",
            ")",
            "Ll0/f<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/content/g;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/core/content/g;-><init>(Ljava/lang/Object;I)V

    .line 7
    return-object v0
.end method

.method private static synthetic lambda$asPredicate$0(Landroid/content/UriMatcher;Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p0, p1, :cond_9

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    :goto_a
    return p0
.end method
