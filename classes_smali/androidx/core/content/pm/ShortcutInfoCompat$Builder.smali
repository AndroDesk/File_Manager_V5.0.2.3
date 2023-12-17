.class public Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/pm/ShortcutInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCapabilityBindingParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCapabilityBindings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

.field private mIsConversation:Z

.field private mSliceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 39
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 41
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPackageName:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object p1

    .line 43
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 44
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 45
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 47
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 48
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_4a

    .line 49
    invoke-static {p2}, Landroidx/appcompat/widget/y;->b(Landroid/content/pm/ShortcutInfo;)I

    move-result v1

    iput v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    goto :goto_55

    .line 50
    :cond_4a
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x0

    goto :goto_53

    :cond_52
    const/4 v1, 0x3

    .line 51
    :goto_53
    iput v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    .line 52
    :goto_55
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 53
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getPersonsFromExtra(Landroid/os/PersistableBundle;)[Ld0/m;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Ld0/m;

    .line 54
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mUser:Landroid/os/UserHandle;

    .line 55
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLastChangedTimestamp:J

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_7b

    .line 56
    invoke-static {p2}, Landroidx/core/content/a;->x(Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsCached:Z

    .line 57
    :cond_7b
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p1

    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDynamic:Z

    .line 58
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p1

    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsPinned:Z

    .line 59
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result p1

    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDeclaredInManifest:Z

    .line 60
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result p1

    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsImmutable:Z

    .line 61
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result p1

    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    .line 62
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    move-result p1

    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mHasKeyFieldsOnly:Z

    .line 63
    invoke-static {p2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getLocusId(Landroid/content/pm/ShortcutInfo;)Landroidx/core/content/LocusIdCompat;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 64
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    .line 65
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/core/content/pm/ShortcutInfoCompat;)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat;

    invoke-direct {v0}, Landroidx/core/content/pm/ShortcutInfoCompat;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 7
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 8
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 9
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPackageName:Ljava/lang/String;

    .line 10
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 11
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 12
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 13
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 14
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 15
    iget v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    iput v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    .line 16
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 17
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    .line 18
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mUser:Landroid/os/UserHandle;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mUser:Landroid/os/UserHandle;

    .line 19
    iget-wide v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLastChangedTimestamp:J

    iput-wide v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLastChangedTimestamp:J

    .line 20
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsCached:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsCached:Z

    .line 21
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDynamic:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDynamic:Z

    .line 22
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsPinned:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsPinned:Z

    .line 23
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDeclaredInManifest:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDeclaredInManifest:Z

    .line 24
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsImmutable:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsImmutable:Z

    .line 25
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    .line 26
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 27
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    .line 28
    iget-boolean v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mHasKeyFieldsOnly:Z

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mHasKeyFieldsOnly:Z

    .line 29
    iget v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    iput v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    .line 30
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Ld0/m;

    if-eqz v1, :cond_7a

    .line 31
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ld0/m;

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Ld0/m;

    .line 32
    :cond_7a
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    if-eqz v1, :cond_87

    .line 33
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 34
    :cond_87
    iget-object v1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_8d

    .line 35
    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 36
    :cond_8d
    iget p1, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    return-void
.end method


# virtual methods
.method public addCapabilityBinding(Ljava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingGetterMatchingBuilder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCapabilityBinding(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingGetterMatchingBuilder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/pm/ShortcutInfoCompat$Builder;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->addCapabilityBinding(Ljava/lang/String;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 5
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 6
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    .line 8
    :cond_14
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_26

    .line 9
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_26
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    return-object p0
.end method

.method public build()Landroidx/core/content/pm/ShortcutInfoCompat;
    .registers 10

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1c0

    .line 11
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 13
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 15
    if-eqz v1, :cond_1b8

    .line 17
    array-length v1, v1

    .line 18
    if-eqz v1, :cond_1b8

    .line 20
    iget-boolean v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mIsConversation:Z

    .line 22
    if-eqz v1, :cond_29

    .line 24
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 26
    if-nez v1, :cond_24

    .line 28
    new-instance v1, Landroidx/core/content/LocusIdCompat;

    .line 30
    iget-object v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 32
    invoke-direct {v1, v2}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 37
    :cond_24
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    .line 42
    :cond_29
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    .line 44
    if-eqz v0, :cond_43

    .line 46
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 48
    iget-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 50
    if-nez v1, :cond_3a

    .line 52
    new-instance v1, Ljava/util/HashSet;

    .line 54
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 57
    iput-object v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 59
    :cond_3a
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 61
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 63
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindings:Ljava/util/Set;

    .line 65
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_43
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    .line 70
    const/4 v1, 0x0

    .line 71
    if-eqz v0, :cond_bb

    .line 73
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 75
    iget-object v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 77
    if-nez v2, :cond_55

    .line 79
    new-instance v2, Landroid/os/PersistableBundle;

    .line 81
    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 84
    iput-object v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 86
    :cond_55
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    .line 88
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 95
    move-result-object v0

    .line 96
    :cond_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_bb

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Ljava/lang/String;

    .line 108
    iget-object v3, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mCapabilityBindingParams:Ljava/util/Map;

    .line 110
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljava/util/Map;

    .line 116
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 119
    move-result-object v4

    .line 120
    iget-object v5, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 122
    iget-object v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 124
    new-array v6, v1, [Ljava/lang/String;

    .line 126
    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 129
    move-result-object v4

    .line 130
    check-cast v4, [Ljava/lang/String;

    .line 132
    invoke-virtual {v5, v2, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 138
    move-result-object v4

    .line 139
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 142
    move-result-object v4

    .line 143
    :goto_8e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_5f

    .line 149
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Ljava/lang/String;

    .line 155
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-result-object v6

    .line 159
    check-cast v6, Ljava/util/List;

    .line 161
    iget-object v7, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 163
    iget-object v7, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 165
    const-string v8, "/"

    .line 167
    invoke-static {v2, v8, v5}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v5

    .line 171
    if-nez v6, :cond_af

    .line 173
    new-array v6, v1, [Ljava/lang/String;

    .line 175
    goto :goto_b7

    .line 176
    :cond_af
    new-array v8, v1, [Ljava/lang/String;

    .line 178
    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 181
    move-result-object v6

    .line 182
    check-cast v6, [Ljava/lang/String;

    .line 184
    :goto_b7
    invoke-virtual {v7, v5, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    goto :goto_8e

    .line 188
    :cond_bb
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mSliceUri:Landroid/net/Uri;

    .line 190
    if-eqz v0, :cond_1b5

    .line 192
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 194
    iget-object v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 196
    if-nez v2, :cond_cc

    .line 198
    new-instance v2, Landroid/os/PersistableBundle;

    .line 200
    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 203
    iput-object v2, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 205
    :cond_cc
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 207
    iget-object v0, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 209
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mSliceUri:Landroid/net/Uri;

    .line 211
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 218
    move-result-object v4

    .line 219
    const/16 v5, 0x3a

    .line 221
    const/16 v6, 0x40

    .line 223
    if-eqz v3, :cond_19a

    .line 225
    const-string v7, "tel"

    .line 227
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 230
    move-result v7

    .line 231
    if-nez v7, :cond_167

    .line 233
    const-string v7, "sip"

    .line 235
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 238
    move-result v7

    .line 239
    if-nez v7, :cond_167

    .line 241
    const-string v7, "sms"

    .line 243
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 246
    move-result v7

    .line 247
    if-nez v7, :cond_167

    .line 249
    const-string v7, "smsto"

    .line 251
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 254
    move-result v7

    .line 255
    if-nez v7, :cond_167

    .line 257
    const-string v7, "mailto"

    .line 259
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 262
    move-result v7

    .line 263
    if-nez v7, :cond_167

    .line 265
    const-string v7, "nfc"

    .line 267
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 270
    move-result v7

    .line 271
    if-eqz v7, :cond_111

    .line 273
    goto :goto_167

    .line 274
    :cond_111
    const-string v1, "http"

    .line 276
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 279
    move-result v1

    .line 280
    if-nez v1, :cond_131

    .line 282
    const-string v1, "https"

    .line 284
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_131

    .line 290
    const-string v1, "ftp"

    .line 292
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 295
    move-result v1

    .line 296
    if-nez v1, :cond_131

    .line 298
    const-string v1, "rtsp"

    .line 300
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_19a

    .line 306
    :cond_131
    const-string v1, "//"

    .line 308
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 315
    move-result-object v4

    .line 316
    const-string v7, ""

    .line 318
    if-eqz v4, :cond_144

    .line 320
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 323
    move-result-object v4

    .line 324
    goto :goto_145

    .line 325
    :cond_144
    move-object v4, v7

    .line 326
    :goto_145
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2}, Landroid/net/Uri;->getPort()I

    .line 332
    move-result v4

    .line 333
    const/4 v8, -0x1

    .line 334
    if-eq v4, v8, :cond_160

    .line 336
    const-string v4, ":"

    .line 338
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v2}, Landroid/net/Uri;->getPort()I

    .line 345
    move-result v2

    .line 346
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    move-result-object v7

    .line 353
    :cond_160
    const-string v2, "/..."

    .line 355
    invoke-static {v1, v7, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    move-result-object v4

    .line 359
    goto :goto_19a

    .line 360
    :cond_167
    :goto_167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    if-eqz v4, :cond_195

    .line 373
    :goto_174
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 376
    move-result v3

    .line 377
    if-ge v1, v3, :cond_195

    .line 379
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 382
    move-result v3

    .line 383
    const/16 v5, 0x2d

    .line 385
    if-eq v3, v5, :cond_18f

    .line 387
    if-eq v3, v6, :cond_18f

    .line 389
    const/16 v5, 0x2e

    .line 391
    if-ne v3, v5, :cond_189

    .line 393
    goto :goto_18f

    .line 394
    :cond_189
    const/16 v3, 0x78

    .line 396
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    goto :goto_192

    .line 400
    :cond_18f
    :goto_18f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    :goto_192
    add-int/lit8 v1, v1, 0x1

    .line 405
    goto :goto_174

    .line 406
    :cond_195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    move-result-object v1

    .line 410
    goto :goto_1b0

    .line 411
    :cond_19a
    :goto_19a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 413
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 416
    if-eqz v3, :cond_1a7

    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    :cond_1a7
    if-eqz v4, :cond_1ac

    .line 426
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_1ac
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v1

    .line 433
    :goto_1b0
    const-string v2, "extraSliceUri"

    .line 435
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_1b5
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 440
    return-object v0

    .line 441
    :cond_1b8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 443
    const-string v1, "Shortcut must have an intent"

    .line 445
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 448
    throw v0

    .line 449
    :cond_1c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 451
    const-string v1, "Shortcut must have a non-empty label"

    .line 453
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 456
    throw v0
.end method

.method public setActivity(Landroid/content/ComponentName;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 5
    return-object p0
.end method

.method public setAlwaysBadged()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    .line 6
    return-object p0
.end method

.method public setCategories(Ljava/util/Set;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/content/pm/ShortcutInfoCompat$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 5
    return-object p0
.end method

.method public setDisabledMessage(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 5
    return-object p0
.end method

.method public setExcludedFromSurfaces(I)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    .line 5
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 5
    return-object p0
.end method

.method public setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 5
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Landroid/content/Intent;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntents([Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public setIntents([Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 5
    return-object p0
.end method

.method public setIsConversation()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mIsConversation:Z

    .line 4
    return-object p0
.end method

.method public setLocusId(Landroidx/core/content/LocusIdCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 5
    return-object p0
.end method

.method public setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 5
    return-object p0
.end method

.method public setLongLived()Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    return-object p0
.end method

.method public setLongLived(Z)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    iput-boolean p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    return-object p0
.end method

.method public setPerson(Ld0/m;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ld0/m;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setPersons([Ld0/m;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public setPersons([Ld0/m;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Ld0/m;

    .line 5
    return-object p0
.end method

.method public setRank(I)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    .line 5
    return-object p0
.end method

.method public setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 5
    return-object p0
.end method

.method public setSliceUri(Landroid/net/Uri;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingGetterMatchingBuilder"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mSliceUri:Landroid/net/Uri;

    .line 3
    return-object p0
.end method

.method public setTransientExtras(Landroid/os/Bundle;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->mInfo:Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iput-object p1, v0, Landroidx/core/content/pm/ShortcutInfoCompat;->mTransientExtras:Landroid/os/Bundle;

    .line 8
    return-object p0
.end method
