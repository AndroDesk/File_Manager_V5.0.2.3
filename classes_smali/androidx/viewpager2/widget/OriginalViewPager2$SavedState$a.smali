.class public final Landroidx/viewpager2/widget/OriginalViewPager2$SavedState$a;
.super Ljava/lang/Object;
.source "OriginalViewPager2.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    invoke-direct {v0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    return-object p1
.end method