.class public Lmiuix/core/util/DirectIndexedFile;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/DirectIndexedFile$Builder;,
        Lmiuix/core/util/DirectIndexedFile$Reader;,
        Lmiuix/core/util/DirectIndexedFile$DataInputStream;,
        Lmiuix/core/util/DirectIndexedFile$DataInputRandom;,
        Lmiuix/core/util/DirectIndexedFile$InputFile;,
        Lmiuix/core/util/DirectIndexedFile$FileHeader;,
        Lmiuix/core/util/DirectIndexedFile$DescriptionPair;,
        Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;,
        Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DensityIndexFile: "


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static build(I)Lmiuix/core/util/DirectIndexedFile$Builder;
    .registers 3

    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/core/util/DirectIndexedFile$Builder;-><init>(ILmiuix/core/util/DirectIndexedFile$1;)V

    return-object v0
.end method

.method public static open(Ljava/io/InputStream;)Lmiuix/core/util/DirectIndexedFile$Reader;
    .registers 3

    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/core/util/DirectIndexedFile$Reader;-><init>(Ljava/io/InputStream;Lmiuix/core/util/DirectIndexedFile$1;)V

    return-object v0
.end method

.method public static open(Ljava/lang/String;)Lmiuix/core/util/DirectIndexedFile$Reader;
    .registers 3

    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Reader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/core/util/DirectIndexedFile$Reader;-><init>(Ljava/lang/String;Lmiuix/core/util/DirectIndexedFile$1;)V

    return-object v0
.end method
