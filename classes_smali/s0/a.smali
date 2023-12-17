.class public abstract Ls0/a;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# instance fields
.field public final a:Ls0/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ls0/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/a;->a:Ls0/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ls0/a;
    .registers 9

    invoke-virtual {p0}, Ls0/a;->b()[Ls0/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    move-object v4, v3

    check-cast v4, Ls0/c;

    iget-object v5, v4, Ls0/c;->b:Landroid/content/Context;

    iget-object v4, v4, Ls0/c;->c:Landroid/net/Uri;

    const-string v6, "_display_name"

    invoke-static {v5, v4, v6}, Ls0/b;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return-object v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract b()[Ls0/a;
.end method
