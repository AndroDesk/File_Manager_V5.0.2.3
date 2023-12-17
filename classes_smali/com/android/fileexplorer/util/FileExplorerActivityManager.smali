.class public Lcom/android/fileexplorer/util/FileExplorerActivityManager;
.super Ljava/lang/Object;
.source "FileExplorerActivityManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileExplorerActivityManager"

.field public static activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addActivity(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    sget-object p0, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public static getActivityAccount()I
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static getAppCompatActivity(Ljava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_33

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_6

    .line 45
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 51
    return-object p0

    .line 52
    :cond_33
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public static getTaskActivityAccount()I
    .registers 4

    .line 1
    const-string v0, "FileExplorerActivityManager"

    .line 3
    :try_start_2
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 6
    move-result-object v1

    .line 7
    const-class v2, Landroid/app/ActivityManager;

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/ActivityManager;

    .line 15
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_40

    .line 22
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_40

    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 34
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_40

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const-string v3, "TaskActivityAccount:"

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->numActivities:I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_41

    .line 64
    return v0

    .line 65
    :cond_40
    return v2

    .line 66
    :catch_41
    move-exception v1

    .line 67
    const-string v2, "getTaskActivityAccount error:"

    .line 69
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x2

    .line 92
    return v0
.end method

.method public static getTopActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1d

    .line 9
    sget-object v0, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 29
    return-object v0

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public static isToBackground()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getTopActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const-string v2, "top activity:"

    .line 11
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const-string v3, "onOneHopShare"

    .line 32
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    instance-of v2, v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 37
    if-eqz v2, :cond_2d

    .line 39
    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 41
    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->isStop()Z

    .line 44
    move-result v0

    .line 45
    return v0

    .line 46
    :cond_2d
    instance-of v2, v0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;

    .line 48
    if-eqz v2, :cond_38

    .line 50
    check-cast v0, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;

    .line 52
    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->isStop()Z

    .line 55
    move-result v0

    .line 56
    return v0

    .line 57
    :cond_38
    return v1
.end method

.method public static releaseAll()V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_22

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 31
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    .line 34
    goto :goto_6

    .line 35
    :cond_22
    return-void
.end method

.method public static remove(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_25

    .line 11
    sget-object v1, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_22

    .line 29
    sget-object p0, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->activityList:Ljava/util/List;

    .line 31
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    return-void

    .line 35
    :cond_22
    add-int/lit8 v0, v0, -0x1

    .line 37
    goto :goto_8

    .line 38
    :cond_25
    return-void
.end method

.method public static restartBySystemApi()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->releaseAll()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getHandler()Landroid/os/Handler;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/android/fileexplorer/util/FileExplorerActivityManager$1;

    .line 10
    invoke-direct {v1}, Lcom/android/fileexplorer/util/FileExplorerActivityManager$1;-><init>()V

    .line 13
    const-wide/16 v2, 0x12c

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    return-void
.end method
