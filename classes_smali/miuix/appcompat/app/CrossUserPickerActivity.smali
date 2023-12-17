.class public Lmiuix/appcompat/app/CrossUserPickerActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "CrossUserPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;
    }
.end annotation


# static fields
.field private static final EXTRA_PICKED_USER_ID:Ljava/lang/String; = "android.intent.extra.picked_user_id"

.field private static final TAG:Ljava/lang/String; = "CrossUserPickerActivity"

.field public static final USER_ID_INVALID:I = -0x1


# instance fields
.field private volatile mCrossUserContentResolver:Landroid/content/ContentResolver;

.field private volatile mCrossUserContextWrapper:Landroid/content/ContextWrapper;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method private validateCallingPackage()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1b

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtils;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    return v0

    .line 28
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 29
    return v0
.end method

.method private validateCrossUser()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 12
    move-result-object v0

    .line 13
    const-string v2, "android.intent.extra.picked_user_id"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    move-result v0

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCallingPackage()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_19

    .line 25
    return v0

    .line 26
    :cond_19
    return v1
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_39

    .line 7
    invoke-static {}, Lmiuix/core/util/PackageHelper;->isMiuiSystem()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_39

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    .line 15
    if-nez v0, :cond_2f

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_13
    iget-object v1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    .line 22
    if-nez v1, :cond_2a

    .line 24
    new-instance v1, Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;

    .line 26
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    .line 33
    move-result v3

    .line 34
    invoke-static {v3}, Lmiuix/core/compat/UserHandleCompat;->createNew(I)Landroid/os/UserHandle;

    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v1, p0, v2, v3}, Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;-><init>(Lmiuix/appcompat/app/CrossUserPickerActivity;Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 41
    iput-object v1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    .line 43
    :cond_2a
    monitor-exit v0

    .line 44
    goto :goto_2f

    .line 45
    :catchall_2c
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_2c

    .line 47
    throw v1

    .line 48
    :cond_2f
    :goto_2f
    const-string v0, "CrossUserPickerActivity"

    .line 50
    const-string v1, "getApplicationContext: WrapperedApplication"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    .line 57
    return-object v0

    .line 58
    :cond_39
    const-string v0, "CrossUserPickerActivity"

    .line 60
    const-string v1, "getApplicationContext: NormalApplication"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_34

    .line 7
    invoke-static {}, Lmiuix/core/util/PackageHelper;->isMiuiSystem()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_34

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    .line 15
    if-nez v0, :cond_2a

    .line 17
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_13
    iget-object v1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    .line 22
    if-nez v1, :cond_25

    .line 24
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Lmiuix/core/compat/UserHandleCompat;->createNew(I)Landroid/os/UserHandle;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {p0, v1}, Lmiuix/core/compat/ContextCompat;->getContentResolverForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    .line 38
    :cond_25
    monitor-exit v0

    .line 39
    goto :goto_2a

    .line 40
    :catchall_27
    move-exception v1

    .line 41
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_27

    .line 42
    throw v1

    .line 43
    :cond_2a
    :goto_2a
    const-string v0, "CrossUserPickerActivity"

    .line 45
    const-string v1, "getContentResolver: CrossUserContentResolver"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    .line 52
    return-object v0

    .line 53
    :cond_34
    const-string v0, "CrossUserPickerActivity"

    .line 55
    const-string v1, "getContentResolver: NormalContentResolver"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public isCrossUserPick()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    :cond_f
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    :cond_f
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    .line 4
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const-string v1, "android.intent.extra.picked_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->isCrossUserPick()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/CrossUserPickerActivity;->validateCrossUser()I

    .line 10
    move-result v0

    .line 11
    const-string v1, "android.intent.extra.picked_user_id"

    .line 13
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 19
    return-void
.end method
