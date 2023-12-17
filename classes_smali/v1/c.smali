.class public final Lv1/c;
.super Ljava/lang/Object;
.source "KPDownloadTransControl.java"


# instance fields
.field public a:I

.field public b:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv1/c;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public final a(I[B)I
    .registers 5

    iget-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    return p1

    :cond_9
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public final c(Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lv1/c;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int p1, v0

    if-gez p1, :cond_16

    goto :goto_18

    :cond_16
    iput p1, p0, Lv1/c;->a:I

    :goto_18
    return-void
.end method
