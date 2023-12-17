.class Lmiuix/navigation/SplitLayout$SavedState$1;
.super Ljava/lang/Object;
.source "SplitLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/SplitLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lmiuix/navigation/SplitLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/navigation/SplitLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/navigation/SplitLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lmiuix/navigation/SplitLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/navigation/SplitLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/navigation/SplitLayout$SavedState;
    .registers 3

    new-instance v0, Lmiuix/navigation/SplitLayout$SavedState;

    invoke-direct {v0, p1}, Lmiuix/navigation/SplitLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/navigation/SplitLayout$SavedState;
    .registers 4

    new-instance v0, Lmiuix/navigation/SplitLayout$SavedState;

    invoke-direct {v0, p1, p2}, Lmiuix/navigation/SplitLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/navigation/SplitLayout$SavedState$1;->newArray(I)[Lmiuix/navigation/SplitLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiuix/navigation/SplitLayout$SavedState;
    .registers 2

    new-array p1, p1, [Lmiuix/navigation/SplitLayout$SavedState;

    return-object p1
.end method
