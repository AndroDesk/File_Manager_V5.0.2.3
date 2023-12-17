.class Lmiuix/navigation/NavigationLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/NavigationLayout;
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
            "Lmiuix/navigation/NavigationLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public offset:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/navigation/NavigationLayout$SavedState$1;

    .line 3
    invoke-direct {v0}, Lmiuix/navigation/NavigationLayout$SavedState$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/navigation/NavigationLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lmiuix/navigation/NavigationLayout$SavedState;->offset:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcelable;Lmiuix/navigation/NavigationLayout$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/navigation/NavigationLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    iget p2, p0, Lmiuix/navigation/NavigationLayout$SavedState;->offset:F

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    return-void
.end method
