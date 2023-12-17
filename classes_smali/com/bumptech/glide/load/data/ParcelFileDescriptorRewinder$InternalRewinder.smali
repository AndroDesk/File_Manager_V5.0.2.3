.class final Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorRewinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalRewinder"
.end annotation


# instance fields
.field private final parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 6
    return-void
.end method


# virtual methods
.method public rewind()Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_10

    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 16
    return-object v0

    .line 17
    :catch_10
    move-exception v0

    .line 18
    new-instance v1, Ljava/io/IOException;

    .line 20
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    throw v1
.end method
