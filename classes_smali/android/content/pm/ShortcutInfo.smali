.class public final synthetic Landroid/content/pm/ShortcutInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public native synthetic getActivity()Landroid/content/ComponentName;
    .annotation build Landroid/annotation/Nullable;
    .end annotation
.end method

.method public native synthetic getCategories()Ljava/util/Set;
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native synthetic getDisabledMessage()Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/Nullable;
    .end annotation
.end method

.method public native synthetic getExtras()Landroid/os/PersistableBundle;
    .annotation build Landroid/annotation/Nullable;
    .end annotation
.end method

.method public native synthetic getId()Ljava/lang/String;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic getIntents()[Landroid/content/Intent;
    .annotation build Landroid/annotation/Nullable;
    .end annotation
.end method

.method public native synthetic getLastChangedTimestamp()J
.end method

.method public native synthetic getLongLabel()Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/Nullable;
    .end annotation
.end method

.method public native synthetic getPackage()Ljava/lang/String;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method

.method public native synthetic getRank()I
.end method

.method public native synthetic getShortLabel()Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/Nullable;
    .end annotation
.end method

.method public native synthetic getUserHandle()Landroid/os/UserHandle;
.end method

.method public native synthetic hasKeyFieldsOnly()Z
.end method

.method public native synthetic isDeclaredInManifest()Z
.end method

.method public native synthetic isDynamic()Z
.end method

.method public native synthetic isEnabled()Z
.end method

.method public native synthetic isImmutable()Z
.end method

.method public native synthetic isPinned()Z
.end method
