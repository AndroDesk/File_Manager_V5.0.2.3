.class public final Landroidx/fragment/app/k0;
.super Ljava/io/Writer;
.source "LogWriter.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    const-string v0, "FragmentManager"

    iput-object v0, p0, Landroidx/fragment/app/k0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v0, p0, Landroidx/fragment/app/k0;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1d
    return-void
.end method

.method public final close()V
    .registers 1

    invoke-virtual {p0}, Landroidx/fragment/app/k0;->a()V

    return-void
.end method

.method public final flush()V
    .registers 1

    invoke-virtual {p0}, Landroidx/fragment/app/k0;->a()V

    return-void
.end method

.method public final write([CII)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_17

    add-int v1, p2, v0

    aget-char v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/k0;->a()V

    goto :goto_14

    :cond_f
    iget-object v2, p0, Landroidx/fragment/app/k0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method
