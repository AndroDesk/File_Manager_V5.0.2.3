.class Lmiuix/appcompat/widget/Spinner$SavedState$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiuix/appcompat/widget/Spinner$SavedState;",
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

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/widget/Spinner$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/widget/Spinner$SavedState;
    .registers 3

    new-instance v0, Lmiuix/appcompat/widget/Spinner$SavedState;

    invoke-direct {v0, p1}, Lmiuix/appcompat/widget/Spinner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner$SavedState$1;->newArray(I)[Lmiuix/appcompat/widget/Spinner$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiuix/appcompat/widget/Spinner$SavedState;
    .registers 2

    new-array p1, p1, [Lmiuix/appcompat/widget/Spinner$SavedState;

    return-object p1
.end method
