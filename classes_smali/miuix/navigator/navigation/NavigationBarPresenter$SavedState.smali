.class Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;
.super Ljava/lang/Object;
.source "NavigationBarPresenter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/navigation/NavigationBarPresenter;
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
            "Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public selectedItemId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState$1;

    .line 3
    invoke-direct {v0}, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 10
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lmiuix/navigator/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    return-void
.end method
