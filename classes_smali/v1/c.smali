.class public final Lv1/c;
.super Ljava/lang/Object;
.source "KPDownloadTransControl.java"


# instance fields
.field public a:I

.field public b:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lv1/c;->a:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    .line 10
    return-void
.end method


# virtual methods
.method public final a(I[B)I
    .registers 5

    .line 1
    iget-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    return p1

    .line 10
    :cond_9
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 12
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 15
    throw p1
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 8
    iget-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    .line 10
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_c

    .line 13
    :catch_c
    :cond_c
    return-void
.end method

.method public final c(Ljava/io/File;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv1/c;->a:I

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    .line 7
    new-instance v0, Ljava/io/FileOutputStream;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 13
    iput-object v0, p0, Lv1/c;->b:Ljava/io/FileOutputStream;

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 18
    move-result-wide v0

    .line 19
    long-to-int p1, v0

    .line 20
    if-gez p1, :cond_16

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    iput p1, p0, Lv1/c;->a:I

    .line 25
    :goto_18
    return-void
.end method
