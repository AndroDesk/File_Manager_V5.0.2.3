.class public Landroidx/core/content/pm/ShortcutInfoCompat;
.super Ljava/lang/Object;
.source "ShortcutInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutInfoCompat$Api33Impl;,
        Landroidx/core/content/pm/ShortcutInfoCompat$Builder;,
        Landroidx/core/content/pm/ShortcutInfoCompat$Surface;
    }
.end annotation


# static fields
.field private static final EXTRA_LOCUS_ID:Ljava/lang/String; = "extraLocusId"

.field private static final EXTRA_LONG_LIVED:Ljava/lang/String; = "extraLongLived"

.field private static final EXTRA_PERSON_:Ljava/lang/String; = "extraPerson_"

.field private static final EXTRA_PERSON_COUNT:Ljava/lang/String; = "extraPersonCount"

.field private static final EXTRA_SLICE_URI:Ljava/lang/String; = "extraSliceUri"

.field public static final SURFACE_LAUNCHER:I = 0x1


# instance fields
.field public mActivity:Landroid/content/ComponentName;

.field public mCategories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mDisabledMessage:Ljava/lang/CharSequence;

.field public mDisabledReason:I

.field public mExcludedSurfaces:I

.field public mExtras:Landroid/os/PersistableBundle;

.field public mHasKeyFieldsOnly:Z

.field public mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public mId:Ljava/lang/String;

.field public mIntents:[Landroid/content/Intent;

.field public mIsAlwaysBadged:Z

.field public mIsCached:Z

.field public mIsDeclaredInManifest:Z

.field public mIsDynamic:Z

.field public mIsEnabled:Z

.field public mIsImmutable:Z

.field public mIsLongLived:Z

.field public mIsPinned:Z

.field public mLabel:Ljava/lang/CharSequence;

.field public mLastChangedTimestamp:J

.field public mLocusId:Landroidx/core/content/LocusIdCompat;

.field public mLongLabel:Ljava/lang/CharSequence;

.field public mPackageName:Ljava/lang/String;

.field public mPersons:[Ld0/m;

.field public mRank:I

.field public mTransientExtras:Landroid/os/Bundle;

.field public mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    .line 7
    return-void
.end method

.method private buildLegacyExtrasBundle()Landroid/os/PersistableBundle;
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroid/os/PersistableBundle;

    .line 7
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 10
    iput-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Ld0/m;

    .line 14
    if-eqz v0, :cond_41

    .line 16
    array-length v1, v0

    .line 17
    if-lez v1, :cond_41

    .line 19
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 21
    array-length v0, v0

    .line 22
    const-string v2, "extraPersonCount"

    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_1b
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Ld0/m;

    .line 30
    array-length v1, v1

    .line 31
    if-ge v0, v1, :cond_41

    .line 33
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 35
    const-string v2, "extraPerson_"

    .line 37
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v2

    .line 41
    add-int/lit8 v3, v0, 0x1

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    iget-object v4, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Ld0/m;

    .line 52
    aget-object v0, v4, v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {v0}, Ld0/m$a;->b(Ld0/m;)Landroid/os/PersistableBundle;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 64
    move v0, v3

    .line 65
    goto :goto_1b

    .line 66
    :cond_41
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 68
    if-eqz v0, :cond_50

    .line 70
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 72
    invoke-virtual {v0}, Landroidx/core/content/LocusIdCompat;->getId()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    const-string v2, "extraLocusId"

    .line 78
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_50
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 83
    iget-boolean v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    .line 85
    const-string v2, "extraLongLived"

    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 92
    return-object v0
.end method

.method public static fromShortcuts(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_26

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 26
    new-instance v2, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 28
    invoke-direct {v2, p0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    .line 31
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_d

    .line 39
    :cond_26
    return-object v0
.end method

.method public static getLocusId(Landroid/content/pm/ShortcutInfo;)Landroidx/core/content/LocusIdCompat;
    .registers 3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_17

    .line 3
    invoke-static {p0}, Landroidx/appcompat/widget/a0;->f(Landroid/content/pm/ShortcutInfo;)Landroid/content/LocusId;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_e
    invoke-static {p0}, Landroidx/appcompat/widget/a0;->f(Landroid/content/pm/ShortcutInfo;)Landroid/content/LocusId;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/LocusIdCompat;->toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;

    move-result-object p0

    return-object p0

    .line 5
    :cond_17
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->getLocusIdFromExtra(Landroid/os/PersistableBundle;)Landroidx/core/content/LocusIdCompat;

    move-result-object p0

    return-object p0
.end method

.method private static getLocusIdFromExtra(Landroid/os/PersistableBundle;)Landroidx/core/content/LocusIdCompat;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    const-string v1, "extraLocusId"

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_d

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    new-instance v0, Landroidx/core/content/LocusIdCompat;

    .line 16
    invoke-direct {v0, p0}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    .line 19
    :goto_12
    return-object v0
.end method

.method public static getLongLivedFromExtra(Landroid/os/PersistableBundle;)Z
    .registers 3

    .line 1
    if-eqz p0, :cond_10

    .line 3
    const-string v0, "extraLongLived"

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_10
    :goto_10
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public static getPersonsFromExtra(Landroid/os/PersistableBundle;)[Ld0/m;
    .registers 6

    .line 1
    if-eqz p0, :cond_30

    .line 3
    const-string v0, "extraPersonCount"

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_30

    .line 12
    :cond_b
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 15
    move-result v0

    .line 16
    new-array v1, v0, [Ld0/m;

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_12
    if-ge v2, v0, :cond_2f

    .line 21
    const-string v3, "extraPerson_"

    .line 23
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v3

    .line 27
    add-int/lit8 v4, v2, 0x1

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Ld0/m$a;->a(Landroid/os/PersistableBundle;)Ld0/m;

    .line 43
    move-result-object v3

    .line 44
    aput-object v3, v1, v2

    .line 46
    move v2, v4

    .line 47
    goto :goto_12

    .line 48
    :cond_2f
    return-object v1

    .line 49
    :cond_30
    :goto_30
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method


# virtual methods
.method public addToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 16

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    sub-int/2addr v1, v2

    .line 6
    aget-object v0, v0, v1

    .line 8
    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 16
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const-string v3, "android.intent.extra.shortcut.NAME"

    .line 22
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 27
    if-eqz v0, :cond_199

    .line 29
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsAlwaysBadged:Z

    .line 31
    if-eqz v0, :cond_3d

    .line 33
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 41
    if-eqz v1, :cond_2f

    .line 43
    :try_start_2a
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v1
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_2e} :catch_2f

    .line 47
    goto :goto_30

    .line 48
    :catch_2f
    :cond_2f
    const/4 v1, 0x0

    .line 49
    :goto_30
    if-nez v1, :cond_3e

    .line 51
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v1

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    const/4 v1, 0x0

    .line 63
    :cond_3e
    :goto_3e
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 65
    iget-object v3, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 67
    iget v4, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x2

    .line 71
    if-ne v4, v6, :cond_da

    .line 73
    iget-object v4, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 75
    if-eqz v4, :cond_da

    .line 77
    check-cast v4, Ljava/lang/String;

    .line 79
    const-string v7, ":"

    .line 81
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v8

    .line 85
    if-nez v8, :cond_58

    .line 87
    goto/16 :goto_da

    .line 89
    :cond_58
    const/4 v8, -0x1

    .line 90
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 93
    move-result-object v9

    .line 94
    aget-object v9, v9, v2

    .line 96
    const-string v10, "/"

    .line 98
    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 101
    move-result-object v11

    .line 102
    aget-object v11, v11, v5

    .line 104
    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 107
    move-result-object v9

    .line 108
    aget-object v9, v9, v2

    .line 110
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 113
    move-result-object v7

    .line 114
    aget-object v7, v7, v5

    .line 116
    const-string v8, "0_resource_name_obfuscated"

    .line 118
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v8

    .line 122
    const-string v10, "IconCompat"

    .line 124
    if-eqz v8, :cond_83

    .line 126
    const-string v4, "Found obfuscated resource, not trying to update resource id for it"

    .line 128
    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    goto :goto_da

    .line 132
    :cond_83
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->b()Ljava/lang/String;

    .line 135
    move-result-object v8

    .line 136
    const-string v12, "android"

    .line 138
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v12

    .line 142
    if-eqz v12, :cond_94

    .line 144
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 147
    move-result-object v5

    .line 148
    goto :goto_b4

    .line 149
    :cond_94
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 152
    move-result-object v12

    .line 153
    const/16 v13, 0x2000

    .line 155
    :try_start_9a
    invoke-virtual {v12, v8, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 158
    move-result-object v13

    .line 159
    if-eqz v13, :cond_b3

    .line 161
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 164
    move-result-object v5
    :try_end_a4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9a .. :try_end_a4} :catch_a5

    .line 165
    goto :goto_b4

    .line 166
    :catch_a5
    move-exception v12

    .line 167
    new-array v13, v2, [Ljava/lang/Object;

    .line 169
    aput-object v8, v13, v5

    .line 171
    const-string v5, "Unable to find pkg=%s for icon"

    .line 173
    invoke-static {v5, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    move-result-object v5

    .line 177
    invoke-static {v10, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_b3
    const/4 v5, 0x0

    .line 181
    :goto_b4
    invoke-virtual {v5, v9, v11, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-result v5

    .line 185
    iget v7, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 187
    if-eq v7, v5, :cond_da

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v9, "Id has changed for "

    .line 196
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v8, " "

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v4

    .line 214
    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput v5, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 219
    :cond_da
    :goto_da
    iget v4, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 221
    if-eq v4, v2, :cond_16d

    .line 223
    if-eq v4, v6, :cond_f5

    .line 225
    const/4 v3, 0x5

    .line 226
    if-ne v4, v3, :cond_ed

    .line 228
    iget-object v0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 230
    check-cast v0, Landroid/graphics/Bitmap;

    .line 232
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 235
    move-result-object v0

    .line 236
    goto/16 :goto_17b

    .line 238
    :cond_ed
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 240
    const-string v0, "Icon type not supported for intent shortcuts"

    .line 242
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 245
    throw p1

    .line 246
    :cond_f5
    :try_start_f5
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->b()Ljava/lang/String;

    .line 249
    move-result-object v2

    .line 250
    const/4 v4, 0x0

    .line 251
    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 254
    move-result-object v2

    .line 255
    if-nez v1, :cond_10d

    .line 257
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 259
    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 261
    invoke-static {v2, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 268
    goto/16 :goto_199

    .line 270
    :cond_10d
    iget v3, v0, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 272
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 279
    move-result v4

    .line 280
    if-lez v4, :cond_12f

    .line 282
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 285
    move-result v4

    .line 286
    if-gtz v4, :cond_120

    .line 288
    goto :goto_12f

    .line 289
    :cond_120
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 292
    move-result v2

    .line 293
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 296
    move-result v4

    .line 297
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 299
    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 302
    move-result-object v2

    .line 303
    goto :goto_141

    .line 304
    :cond_12f
    :goto_12f
    const-string v4, "activity"

    .line 306
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Landroid/app/ActivityManager;

    .line 312
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    .line 315
    move-result v2

    .line 316
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 318
    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 321
    move-result-object v2

    .line 322
    :goto_141
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 325
    move-result v4

    .line 326
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 329
    move-result v5

    .line 330
    const/4 v6, 0x0

    .line 331
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    new-instance v4, Landroid/graphics/Canvas;

    .line 336
    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 339
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_155
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f5 .. :try_end_155} :catch_157

    .line 342
    move-object v0, v2

    .line 343
    goto :goto_17b

    .line 344
    :catch_157
    move-exception p1

    .line 345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 347
    const-string v2, "Can\'t find package "

    .line 349
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    move-result-object v2

    .line 353
    iget-object v0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 355
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    move-result-object v0

    .line 362
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    throw v1

    .line 366
    :cond_16d
    iget-object v0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 368
    check-cast v0, Landroid/graphics/Bitmap;

    .line 370
    if-eqz v1, :cond_17b

    .line 372
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 375
    move-result-object v3

    .line 376
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 379
    move-result-object v0

    .line 380
    :cond_17b
    :goto_17b
    if-eqz v1, :cond_194

    .line 382
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 385
    move-result v2

    .line 386
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 389
    move-result v3

    .line 390
    div-int/lit8 v4, v2, 0x2

    .line 392
    div-int/lit8 v5, v3, 0x2

    .line 394
    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    new-instance v2, Landroid/graphics/Canvas;

    .line 399
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 402
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 405
    :cond_194
    const-string v1, "android.intent.extra.shortcut.ICON"

    .line 407
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    :cond_199
    :goto_199
    return-object p1
.end method

.method public getActivity()Landroid/content/ComponentName;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 3
    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 3
    return-object v0
.end method

.method public getDisabledMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getDisabledReason()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledReason:I

    .line 3
    return v0
.end method

.method public getExcludedFromSurfaces()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    .line 3
    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 3
    return-object v0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 6
    aget-object v0, v0, v1

    .line 8
    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 3
    array-length v1, v0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [Landroid/content/Intent;

    .line 10
    return-object v0
.end method

.method public getLastChangedTimestamp()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLastChangedTimestamp:J

    .line 3
    return-wide v0
.end method

.method public getLocusId()Landroidx/core/content/LocusIdCompat;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    return-object v0
.end method

.method public getLongLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPackageName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRank()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    .line 3
    return v0
.end method

.method public getShortLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 3
    return-object v0
.end method

.method public getTransientExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mTransientExtras:Landroid/os/Bundle;

    .line 3
    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mUser:Landroid/os/UserHandle;

    .line 3
    return-object v0
.end method

.method public hasKeyFieldsOnly()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mHasKeyFieldsOnly:Z

    .line 3
    return v0
.end method

.method public isCached()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsCached:Z

    .line 3
    return v0
.end method

.method public isDeclaredInManifest()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDeclaredInManifest:Z

    .line 3
    return v0
.end method

.method public isDynamic()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsDynamic:Z

    .line 3
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsEnabled:Z

    .line 3
    return v0
.end method

.method public isExcludedFromSurfaces(I)Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_7

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
    :goto_8
    return p1
.end method

.method public isImmutable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsImmutable:Z

    .line 3
    return v0
.end method

.method public isPinned()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsPinned:Z

    .line 3
    return v0
.end method

.method public toShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/pm/ShortcutInfo$Builder;

    .line 3
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 24
    if-eqz v1, :cond_22

    .line 26
    iget-object v2, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/IconCompat$a;->e(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 35
    :cond_22
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2f

    .line 43
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 48
    :cond_2f
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3c

    .line 56
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mDisabledMessage:Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setDisabledMessage(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 61
    :cond_3c
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mActivity:Landroid/content/ComponentName;

    .line 63
    if-eqz v1, :cond_43

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 68
    :cond_43
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mCategories:Ljava/util/Set;

    .line 70
    if-eqz v1, :cond_4a

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setCategories(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 75
    :cond_4a
    iget v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mRank:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    .line 80
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExtras:Landroid/os/PersistableBundle;

    .line 82
    if-eqz v1, :cond_56

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 87
    :cond_56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    const/16 v2, 0x1d

    .line 91
    if-lt v1, v2, :cond_8d

    .line 93
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Ld0/m;

    .line 95
    if-eqz v1, :cond_7c

    .line 97
    array-length v2, v1

    .line 98
    if-lez v2, :cond_7c

    .line 100
    array-length v1, v1

    .line 101
    new-array v2, v1, [Landroid/app/Person;

    .line 103
    const/4 v3, 0x0

    .line 104
    :goto_67
    if-ge v3, v1, :cond_79

    .line 106
    iget-object v4, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mPersons:[Ld0/m;

    .line 108
    aget-object v4, v4, v3

    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    invoke-static {v4}, Ld0/m$b;->b(Ld0/m;)Landroid/app/Person;

    .line 116
    move-result-object v4

    .line 117
    aput-object v4, v2, v3

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 121
    goto :goto_67

    .line 122
    :cond_79
    invoke-static {v0, v2}, Landroidx/appcompat/widget/a0;->q(Landroid/content/pm/ShortcutInfo$Builder;[Landroid/app/Person;)V

    .line 125
    :cond_7c
    iget-object v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 127
    if-eqz v1, :cond_87

    .line 129
    invoke-virtual {v1}, Landroidx/core/content/LocusIdCompat;->toLocusId()Landroid/content/LocusId;

    .line 132
    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Landroidx/appcompat/widget/a0;->o(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/LocusId;)V

    .line 136
    :cond_87
    iget-boolean v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mIsLongLived:Z

    .line 138
    invoke-static {v0, v1}, Landroidx/appcompat/widget/a0;->p(Landroid/content/pm/ShortcutInfo$Builder;Z)V

    .line 141
    goto :goto_94

    .line 142
    :cond_8d
    invoke-direct {p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->buildLegacyExtrasBundle()Landroid/os/PersistableBundle;

    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 149
    :goto_94
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 151
    const/16 v2, 0x21

    .line 153
    if-lt v1, v2, :cond_9f

    .line 155
    iget v1, p0, Landroidx/core/content/pm/ShortcutInfoCompat;->mExcludedSurfaces:I

    .line 157
    invoke-static {v0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Api33Impl;->setExcludedFromSurfaces(Landroid/content/pm/ShortcutInfo$Builder;I)V

    .line 160
    :cond_9f
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    .line 163
    move-result-object v0

    .line 164
    return-object v0
.end method
