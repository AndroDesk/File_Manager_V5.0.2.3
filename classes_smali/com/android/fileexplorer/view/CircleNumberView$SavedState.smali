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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState$1;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/view/CircleNumberView$SavedState$1;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->percent:F

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->used:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->total:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->textColor:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinStartColor:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinEndColor:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartColor:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartClickedColor:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinDepth:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->textColor:I

    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->textColor:I

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinStartColor:I

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinStartColor:I

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinEndColor:I

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinEndColor:I

    .line 3
    return p1
.end method

.method public static synthetic access$500(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartColor:I

    .line 3
    return p0
.end method

.method public static synthetic access$502(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartColor:I

    .line 3
    return p1
.end method

.method public static synthetic access$600(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartClickedColor:I

    .line 3
    return p0
.end method

.method public static synthetic access$602(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartClickedColor:I

    .line 3
    return p1
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinDepth:I

    .line 3
    return p0
.end method

.method public static synthetic access$702(Lcom/android/fileexplorer/view/CircleNumberView$SavedState;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinDepth:I

    .line 3
    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "PercentLemon.SavedState{"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " percent="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v1, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->percent:F

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "}"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->percent:F

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    iget-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->used:J

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    iget-wide v0, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->total:J

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->textColor:I

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinStartColor:I

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinEndColor:I

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartColor:I

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->heartClickedColor:I

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p2, p0, Lcom/android/fileexplorer/view/CircleNumberView$SavedState;->skinDepth:I

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
