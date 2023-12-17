.class Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/DateTimePicker;
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
            "Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsLunar:Z

.field private mTimeInMillis:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState$1;

    .line 3
    invoke-direct {v0}, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->mTimeInMillis:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->mIsLunar:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;JZ)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iput-wide p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->mTimeInMillis:J

    .line 3
    iput-boolean p4, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->mIsLunar:Z

    return-void
.end method

.method public static synthetic access$100(Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->mIsLunar:Z

    .line 3
    return p0
.end method


# virtual methods
.method public getTimeInMillis()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->mTimeInMillis:J

    .line 3
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget-wide v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->mTimeInMillis:J

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$SavedState;->mIsLunar:Z

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    return-void
.end method
