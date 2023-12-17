.class public Lmiuix/core/util/DirectIndexedFile$Builder;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;,
        Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;,
        Lmiuix/core/util/DirectIndexedFile$Builder$Item;
    }
.end annotation


# instance fields
.field private mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

.field private mFileDataVersion:I

.field private mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

.field private mIndexDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    iput p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    return-void
.end method

.method public synthetic constructor <init>(ILmiuix/core/util/DirectIndexedFile$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Builder;-><init>(I)V

    return-void
.end method

.method private build()V
    .registers 15

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lmiuix/core/util/DirectIndexedFile$FileHeader;

    iget v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileDataVersion:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lmiuix/core/util/DirectIndexedFile$FileHeader;-><init>(IILmiuix/core/util/DirectIndexedFile$1;)V

    iput-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_9a

    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    iget-object v5, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v5}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v5

    new-instance v12, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;-><init>(JJLmiuix/core/util/DirectIndexedFile$1;)V

    aput-object v12, v5, v2

    move v5, v1

    :goto_30
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4e

    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4b

    goto :goto_4e

    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_4e
    :goto_4e
    new-array v5, v5, [Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-static {v4, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3402(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move v5, v1

    :goto_54
    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_96

    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    invoke-static {v7}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)I

    move-result v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$3500(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)I

    move-result v6

    add-int/lit8 v10, v6, 0x1

    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    new-instance v7, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJLmiuix/core/util/DirectIndexedFile$1;)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    :cond_9a
    :try_start_9a
    invoke-direct {p0, v3}, Lmiuix/core/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9d

    :catch_9d
    return-void
.end method

.method private checkCurrentIndexingDataKind()V
    .registers 3

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data kind before adding group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCurrentIndexingGroup()V
    .registers 3

    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please add a data group before adding data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeAll(Ljava/io/DataOutput;)I
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1a2

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v3, p1}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$3700(Lmiuix/core/util/DirectIndexedFile$FileHeader;Ljava/io/DataOutput;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v3

    aget-object v3, v3, v1

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$502(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    if-eqz p1, :cond_31

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v4

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_31
    add-int/lit8 v2, v2, 0x4

    move v4, v0

    :goto_34
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_49

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5, p1}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->access$3800(Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_49
    iget-object v4, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mFileHeader:Lmiuix/core/util/DirectIndexedFile$FileHeader;

    invoke-static {v4}, Lmiuix/core/util/DirectIndexedFile$FileHeader;->access$300(Lmiuix/core/util/DirectIndexedFile$FileHeader;)[Lmiuix/core/util/DirectIndexedFile$DescriptionPair;

    move-result-object v4

    aget-object v4, v4, v1

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Lmiuix/core/util/DirectIndexedFile$DescriptionPair;->access$802(Lmiuix/core/util/DirectIndexedFile$DescriptionPair;J)J

    if-eqz p1, :cond_5f

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v4

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_5f
    add-int/lit8 v2, v2, 0x4

    move v4, v0

    :goto_62
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_77

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v5, p1}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3900(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    :cond_77
    move v4, v0

    :goto_78
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_a5

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    int-to-long v6, v2

    invoke-static {v5, v6, v7}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1402(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;J)J

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$4000(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$4100(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    :cond_a5
    move v4, v0

    :goto_a6
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_19e

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    int-to-long v6, v2

    iput-wide v6, v5, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    if-nez p1, :cond_e5

    move v5, v0

    move v6, v5

    :goto_ba
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    array-length v7, v7

    if-ge v5, v7, :cond_cf

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_ba

    :cond_cf
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    iget v5, v5, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v7

    aget-object v7, v7, v4

    iget v7, v7, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    sub-int/2addr v5, v7

    mul-int/2addr v5, v6

    add-int/2addr v5, v2

    move v2, v5

    goto/16 :goto_19a

    :cond_e5
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v5

    aget-object v5, v5, v4

    iget v5, v5, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    :goto_ed
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object v6

    aget-object v6, v6, v4

    iget v6, v6, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    if-ge v5, v6, :cond_19a

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    if-nez v6, :cond_10b

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2600(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    move-result-object v6

    :cond_10b
    move v7, v0

    :goto_10c
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_196

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_130

    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_187

    :cond_130
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_14d

    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_187

    :cond_14d
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_16a

    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_187

    :cond_16a
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_187

    invoke-static {v6}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;->access$4200(Lmiuix/core/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v7

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {p1, v8, v9}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_187
    :goto_187
    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1200(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)B

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_10c

    :cond_196
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_ed

    :cond_19a
    :goto_19a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a6

    :cond_19e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_1a2
    return v2
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->checkCurrentIndexingGroup()V

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    array-length v1, p2

    if-ne v0, v1, :cond_233

    const/4 v0, 0x0

    :goto_e
    array-length v1, p2

    if-ge v0, v1, :cond_204

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$1;->$SwitchMap$miuix$core$util$DirectIndexedFile$DataItemDescriptor$Type:[I

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Object["

    packed-switch v1, :pswitch_data_24c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported type of objects "

    const-string v1, ", "

    invoke-static {p2, v0, v1}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1700(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " expected"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_50  #0x9
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_58

    goto/16 :goto_1f4

    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "] should be long"

    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_64  #0x8
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_6c

    goto/16 :goto_1f4

    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "] should be int"

    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_78  #0x7
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_80

    goto/16 :goto_1f4

    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "] should be short"

    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_8c  #0x6
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/Byte;

    if-eqz v1, :cond_94

    goto/16 :goto_1f4

    :cond_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "] should be byte"

    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a0  #0x5
    aget-object v1, p2, v0

    instance-of v1, v1, [J

    if-eqz v1, :cond_db

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_1f4

    :cond_db
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "] should be long[]"

    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_e7  #0x4
    aget-object v1, p2, v0

    instance-of v1, v1, [I

    if-eqz v1, :cond_122

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_1f4

    :cond_122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "] should be int[]"

    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_12e  #0x3
    aget-object v1, p2, v0

    instance-of v1, v1, [S

    if-eqz v1, :cond_169

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto/16 :goto_1f4

    :cond_169
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "] should be short[]"

    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_175  #0x2
    aget-object v1, p2, v0

    instance-of v1, v1, [B

    if-eqz v1, :cond_1af

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    goto :goto_1f4

    :cond_1af
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "] should be byte[]"

    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1bb  #0x1
    aget-object v1, p2, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1f8

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I

    move-result v2

    invoke-static {v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$3000(I)B

    move-result v2

    invoke-static {v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;->access$1202(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;B)B

    :goto_1f4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_1f8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "] should be String"

    invoke-static {v2, v0, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_204
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiuix/core/util/DirectIndexedFile$1;)V

    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$3100(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {p2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_233
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Different number of objects inputted, "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v0

    array-length v0, v0

    const-string v1, " data expected"

    invoke-static {p2, v0, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_24c
    .packed-switch 0x1
        :pswitch_1bb  #00000001
        :pswitch_175  #00000002
        :pswitch_12e  #00000003
        :pswitch_e7  #00000004
        :pswitch_a0  #00000005
        :pswitch_8c  #00000006
        :pswitch_78  #00000007
        :pswitch_64  #00000008
        :pswitch_50  #00000009
    .end packed-switch
.end method

.method public addGroup([I[[Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->checkCurrentIndexingDataKind()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->newGroup()V

    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_18

    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder;->add(I[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-void

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Different number between indexes and objects"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs addKind([Ljava/lang/Object;)V
    .registers 15

    new-instance v0, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;-><init>(ILmiuix/core/util/DirectIndexedFile$1;)V

    iput-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_13a

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    invoke-direct {v3, p0, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;Lmiuix/core/util/DirectIndexedFile$1;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v1, p1, v0

    instance-of v3, v1, Ljava/lang/Byte;

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    :goto_3a
    move-object v6, v1

    move v7, v4

    goto/16 :goto_115

    :cond_3e
    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_57

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/4 v4, 0x2

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_3a

    :cond_57
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_70

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/4 v4, 0x4

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_3a

    :cond_70
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_8a

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const/16 v4, 0x8

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_3a

    :cond_8a
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_a5

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto :goto_3a

    :cond_a5
    instance-of v3, v1, [B

    if-eqz v3, :cond_c1

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto/16 :goto_3a

    :cond_c1
    instance-of v3, v1, [S

    if-eqz v3, :cond_dd

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto/16 :goto_3a

    :cond_dd
    instance-of v3, v1, [I

    if-eqz v3, :cond_f9

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto/16 :goto_3a

    :cond_f9
    instance-of v1, v1, [J

    if-eqz v1, :cond_12c

    sget-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    iget-object v3, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v3}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2200(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;

    aget-object v5, p1, v0

    invoke-static {v3, v5}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    goto/16 :goto_3a

    :goto_115
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2400(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    move-result-object v1

    new-instance v3, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;-><init>(Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;BBBJLmiuix/core/util/DirectIndexedFile$1;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    :cond_12c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported type of the ["

    const-string v2, "] argument"

    invoke-static {v1, v0, v2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13a
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    new-instance v1, Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v3, p1, v2}, Lmiuix/core/util/DirectIndexedFile$Builder$Item;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiuix/core/util/DirectIndexedFile$1;)V

    invoke-static {v0, v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2602(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;Lmiuix/core/util/DirectIndexedFile$Builder$Item;)Lmiuix/core/util/DirectIndexedFile$Builder$Item;

    return-void
.end method

.method public newGroup()V
    .registers 3

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v1}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_38

    :cond_2a
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder;->mCurrentIndexData:Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;

    invoke-static {v0}, Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;->access$2800(Lmiuix/core/util/DirectIndexedFile$Builder$IndexData;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder;->build()V

    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1c

    :try_start_13
    invoke-direct {p0, v1}, Lmiuix/core/util/DirectIndexedFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1a
    move-exception v0

    goto :goto_20

    :catchall_1c
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_20
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_25
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_46
    throw v0
.end method
