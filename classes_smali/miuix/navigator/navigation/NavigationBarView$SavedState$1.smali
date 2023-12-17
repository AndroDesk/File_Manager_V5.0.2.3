.class Lmiuix/navigator/navigation/NavigationBarView$SavedState$1;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/navigation/NavigationBarView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lmiuix/navigator/navigation/NavigationBarView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/navigation/NavigationBarView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/navigator/navigation/NavigationBarView$SavedState;
    .registers 4

    .line 4
    new-instance v0, Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiuix/navigator/navigation/NavigationBarView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/navigator/navigation/NavigationBarView$SavedState;
    .registers 4

    .line 3
    new-instance v0, Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    invoke-direct {v0, p1, p2}, Lmiuix/navigator/navigation/NavigationBarView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/navigator/navigation/NavigationBarView$SavedState$1;->newArray(I)[Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiuix/navigator/navigation/NavigationBarView$SavedState;
    .registers 2

    .line 2
    new-array p1, p1, [Lmiuix/navigator/navigation/NavigationBarView$SavedState;

    return-object p1
.end method
