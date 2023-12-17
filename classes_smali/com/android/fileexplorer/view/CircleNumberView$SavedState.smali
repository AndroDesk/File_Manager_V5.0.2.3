.class Lcom/android/fileexplorer/view/CircleNumberView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CircleNumberView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/CircleNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/fileexplorer/view/CircleNumberView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private heartClickedColor:I

.field private heartColor:I

.field public percent:F

.field private skinDepth:I

.field private skinEndColor:I

.field private skinStartColor:I

.field private textColor:I

.field public total:J

.field public used:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState$1;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->percent:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->used:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->total:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->textColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinStartColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinEndColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartClickedColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinDepth:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->textColor:I

    return p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->textColor:I

    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinStartColor:I

    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinStartColor:I

    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinEndColor:I

    return p0
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinEndColor:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartColor:I

    return p0
.end method

.method public static synthetic access$502(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartColor:I

    return p1
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartClickedColor:I

    return p0
.end method

.method public static synthetic access$602(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartClickedColor:I

    return p1
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinDepth:I

    return p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinDepth:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "PercentLemon.SavedState{"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->percent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->percent:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->used:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->textColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinStartColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinEndColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartClickedColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinDepth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
