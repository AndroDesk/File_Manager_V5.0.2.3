.class Lmiuix/pickerwidget/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/DatePicker;
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
            "Lmiuix/pickerwidget/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mIsLunar:Z

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/pickerwidget/widget/DatePicker$SavedState$1;

    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/widget/DatePicker$SavedState$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lmiuix/pickerwidget/widget/DatePicker$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZ)V
    .registers 6

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iput p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    .line 5
    iput p3, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    .line 6
    iput p4, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    .line 7
    iput-boolean p5, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcelable;IIIZLmiuix/pickerwidget/widget/DatePicker$1;)V
    .registers 7

    .line 2
    invoke-direct/range {p0 .. p5}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZ)V

    return-void
.end method

.method public static synthetic access$1100(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    .line 3
    return p0
.end method

.method public static synthetic access$1200(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    .line 3
    return p0
.end method

.method public static synthetic access$1400(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    .line 3
    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    return-void
.end method
