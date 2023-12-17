.class public final Landroidx/fragment/app/k0;
.super Ljava/io/Writer;
.source "LogWriter.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const/16 v1, 0x80

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    iput-object v0, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "FragmentManager"

    .line 15
    iput-object v0, p0, Landroidx/fragment/app/k0;->a:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1d

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/k0;->a:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 30
    :cond_1d
    return-void
.end method

.method public final close()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->a()V

    .line 4
    return-void
.end method

.method public final flush()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->a()V

    .line 4
    return-void
.end method

.method public final write([CII)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    if-ge v0, p3, :cond_17

    .line 4
    add-int v1, p2, v0

    .line 6
    aget-char v1, p1, v1

    .line 8
    const/16 v2, 0xa

    .line 10
    if-ne v1, v2, :cond_f

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/k0;->a()V

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    iget-object v2, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :goto_14
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_17
    return-void
.end method
