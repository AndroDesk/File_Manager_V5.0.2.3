.class public abstract Ls0/a;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# instance fields
.field public final a:Ls0/a;


# direct methods
.method public constructor <init>(Ls0/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ls0/a;->a:Ls0/a;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ls0/a;
    .registers 9

    .line 1
    invoke-virtual {p0}, Ls0/a;->b()[Ls0/a;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_6
    if-ge v2, v1, :cond_21

    .line 9
    aget-object v3, v0, v2

    .line 11
    move-object v4, v3

    .line 12
    check-cast v4, Ls0/c;

    .line 14
    iget-object v5, v4, Ls0/c;->b:Landroid/content/Context;

    .line 16
    iget-object v4, v4, Ls0/c;->c:Landroid/net/Uri;

    .line 18
    const-string v6, "_display_name"

    .line 20
    invoke-static {v5, v4, v6}, Ls0/b;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_1e

    .line 30
    return-object v3

    .line 31
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_6

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public abstract b()[Ls0/a;
.end method
