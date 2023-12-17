.class public Landroidx/activity/ComponentActivity;
.super Landroidx/core/app/ComponentActivity;
.source "ComponentActivity.java"

# interfaces
.implements Lf/a;
.implements Landroidx/lifecycle/f0;
.implements Landroidx/lifecycle/g;
.implements Lc1/e;
.implements Landroidx/activity/j;
.implements Landroidx/activity/result/f;
.implements Landroidx/core/content/OnConfigurationChangedProvider;
.implements Landroidx/core/content/OnTrimMemoryProvider;
.implements Ld0/k;
.implements Ld0/l;
.implements Lm0/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$c;,
        Landroidx/activity/ComponentActivity$d;
    }
.end annotation


# static fields
.field private static final ACTIVITY_RESULT_TAG:Ljava/lang/String; = "android:support:activity-result"


# instance fields
.field private final mActivityResultRegistry:Landroidx/activity/result/e;

.field private mContentLayoutId:I

.field public final mContextAwareHelper:Lf/b;

.field private mDefaultFactory:Landroidx/lifecycle/c0$b;

.field private mDispatchingOnMultiWindowModeChanged:Z

.field private mDispatchingOnPictureInPictureModeChanged:Z

.field private final mLifecycleRegistry:Landroidx/lifecycle/n;

.field private final mMenuHostHelper:Lm0/m;

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private final mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ll0/a<",
            "Landroid/content/res/Configuration;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ll0/a<",
            "Ld0/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ll0/a<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ll0/a<",
            "Ld0/n;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ll0/a<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSavedStateRegistryController:Lc1/d;

.field private mViewModelStore:Landroidx/lifecycle/e0;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroidx/core/app/ComponentActivity;-><init>()V

    .line 2
    new-instance v0, Lf/b;

    invoke-direct {v0}, Lf/b;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Lf/b;

    .line 3
    new-instance v0, Lm0/m;

    new-instance v1, Landroidx/activity/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lm0/m;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mMenuHostHelper:Lm0/m;

    .line 4
    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0, p0}, Landroidx/lifecycle/n;-><init>(Landroidx/lifecycle/m;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 5
    new-instance v0, Lc1/d;

    invoke-direct {v0, p0}, Lc1/d;-><init>(Lc1/e;)V

    .line 6
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Lc1/d;

    .line 7
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v3, Landroidx/activity/ComponentActivity$a;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$a;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v3}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    new-instance v1, Landroidx/activity/ComponentActivity$b;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$b;-><init>(Landroidx/activity/ComponentActivity;)V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/e;

    .line 10
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/activity/ComponentActivity;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    iput-boolean v2, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnMultiWindowModeChanged:Z

    .line 16
    iput-boolean v2, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnPictureInPictureModeChanged:Z

    .line 17
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    if-eqz v1, :cond_ad

    .line 18
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v3, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 19
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v3, Landroidx/activity/ComponentActivity$4;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$4;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 20
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v3, Landroidx/activity/ComponentActivity$5;

    invoke-direct {v3, p0}, Landroidx/activity/ComponentActivity$5;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/l;)V

    .line 21
    invoke-virtual {v0}, Lc1/d;->a()V

    .line 22
    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->b(Lc1/e;)V

    .line 23
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lc1/c;

    move-result-object v0

    new-instance v1, Landroidx/activity/c;

    invoke-direct {v1, p0, v2}, Landroidx/activity/c;-><init>(Ljava/lang/Object;I)V

    const-string v3, "android:support:activity-result"

    invoke-virtual {v0, v3, v1}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    .line 24
    new-instance v0, Landroidx/activity/d;

    invoke-direct {v0, p0, v2}, Landroidx/activity/d;-><init>(Landroidx/activity/ComponentActivity;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Lf/c;)V

    return-void

    .line 25
    :cond_ad
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 27
    iput p1, p0, Landroidx/activity/ComponentActivity;->mContentLayoutId:I

    return-void
.end method

.method public static synthetic a(Landroidx/activity/ComponentActivity;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/activity/ComponentActivity;->lambda$new$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$001(Landroidx/activity/ComponentActivity;)V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/activity/ComponentActivity;)Landroid/os/Bundle;
    .registers 1

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->lambda$new$0()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private initViewTreeOwners()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Ly0/a;->view_tree_lifecycle_owner:I

    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    sget v1, Lz0/d;->view_tree_view_model_store_owner:I

    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    const-string v1, "<this>"

    .line 37
    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget v2, Lc1/a;->view_tree_saved_state_registry_owner:I

    .line 42
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget v1, Landroidx/activity/k;->view_tree_on_back_pressed_dispatcher_owner:I

    .line 58
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method private lambda$new$0()Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/e;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    iget-object v3, v1, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 18
    move-result-object v3

    .line 19
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 24
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    iget-object v3, v1, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 40
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    iget-object v3, v1, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    .line 47
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    const-string v3, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 52
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    iget-object v2, v1, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 57
    invoke-virtual {v2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/os/Bundle;

    .line 63
    const-string v3, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 65
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 68
    iget-object v1, v1, Landroidx/activity/result/e;->a:Ljava/util/Random;

    .line 70
    const-string v2, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 75
    return-object v0
.end method

.method private lambda$new$1(Landroid/content/Context;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lc1/c;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android:support:activity-result"

    .line 7
    invoke-virtual {p1, v0}, Lc1/c;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_8e

    .line 13
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/e;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 26
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_8e

    .line 32
    if-nez v1, :cond_22

    .line 34
    goto :goto_8e

    .line 35
    :cond_22
    const-string v3, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 37
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 40
    move-result-object v3

    .line 41
    iput-object v3, v0, Landroidx/activity/result/e;->e:Ljava/util/ArrayList;

    .line 43
    const-string v3, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 45
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/util/Random;

    .line 51
    iput-object v3, v0, Landroidx/activity/result/e;->a:Ljava/util/Random;

    .line 53
    iget-object v3, v0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 55
    const-string v4, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 57
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 64
    const/4 p1, 0x0

    .line 65
    :goto_40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v3

    .line 69
    if-ge p1, v3, :cond_8e

    .line 71
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/String;

    .line 77
    iget-object v4, v0, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 79
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_69

    .line 85
    iget-object v4, v0, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 87
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/Integer;

    .line 93
    iget-object v5, v0, Landroidx/activity/result/e;->h:Landroid/os/Bundle;

    .line 95
    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_69

    .line 101
    iget-object v3, v0, Landroidx/activity/result/e;->b:Ljava/util/HashMap;

    .line 103
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_69
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Ljava/lang/Integer;

    .line 112
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 115
    move-result v3

    .line 116
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Ljava/lang/String;

    .line 122
    iget-object v5, v0, Landroidx/activity/result/e;->b:Ljava/util/HashMap;

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v5, v0, Landroidx/activity/result/e;->c:Ljava/util/HashMap;

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 p1, p1, 0x1

    .line 142
    goto :goto_40

    .line 143
    :cond_8e
    :goto_8e
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    return-void
.end method

.method public addMenuProvider(Lm0/o;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mMenuHostHelper:Lm0/m;

    .line 2
    iget-object v1, v0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, v0, Lm0/m;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public addMenuProvider(Lm0/o;Landroidx/lifecycle/m;)V
    .registers 4

    .line 5
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mMenuHostHelper:Lm0/m;

    invoke-virtual {v0, p1, p2}, Lm0/m;->a(Lm0/o;Landroidx/lifecycle/m;)V

    return-void
.end method

.method public addMenuProvider(Lm0/o;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mMenuHostHelper:Lm0/m;

    invoke-virtual {v0, p1, p2, p3}, Lm0/m;->b(Lm0/o;Landroidx/lifecycle/m;Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final addOnConfigurationChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final addOnContextAvailableListener(Lf/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Lf/b;

    .line 3
    invoke-virtual {v0, p1}, Lf/b;->addOnContextAvailableListener(Lf/c;)V

    .line 6
    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ld0/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final addOnNewIntentListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ld0/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final addOnTrimMemoryListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public ensureViewModelStore()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/e0;

    .line 3
    if-nez v0, :cond_1b

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/activity/ComponentActivity$d;

    .line 11
    if-eqz v0, :cond_10

    .line 13
    iget-object v0, v0, Landroidx/activity/ComponentActivity$d;->b:Landroidx/lifecycle/e0;

    .line 15
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/e0;

    .line 17
    :cond_10
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/e0;

    .line 19
    if-nez v0, :cond_1b

    .line 21
    new-instance v0, Landroidx/lifecycle/e0;

    .line 23
    invoke-direct {v0}, Landroidx/lifecycle/e0;-><init>()V

    .line 26
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/e0;

    .line 28
    :cond_1b
    return-void
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/e;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/e;

    .line 3
    return-object v0
.end method

.method public getDefaultViewModelCreationExtras()Lz0/a;
    .registers 5

    .line 1
    new-instance v0, Lz0/c;

    .line 3
    invoke-direct {v0}, Lz0/c;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_16

    .line 12
    sget-object v1, Landroidx/lifecycle/b0;->a:Landroidx/lifecycle/b0;

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 17
    move-result-object v2

    .line 18
    iget-object v3, v0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 20
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_16
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->a:Landroidx/lifecycle/SavedStateHandleSupport$b;

    .line 25
    iget-object v2, v0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 27
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->b:Landroidx/lifecycle/SavedStateHandleSupport$c;

    .line 32
    iget-object v2, v0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 34
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_43

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_43

    .line 53
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->c:Landroidx/lifecycle/SavedStateHandleSupport$a;

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 62
    move-result-object v2

    .line 63
    iget-object v3, v0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 65
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_43
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/c0$b;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mDefaultFactory:Landroidx/lifecycle/c0$b;

    .line 3
    if-nez v0, :cond_1f

    .line 5
    new-instance v0, Landroidx/lifecycle/y;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_19

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 24
    move-result-object v2

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v2, 0x0

    .line 27
    :goto_1a
    invoke-direct {v0, v1, p0, v2}, Landroidx/lifecycle/y;-><init>(Landroid/app/Application;Lc1/e;Landroid/os/Bundle;)V

    .line 30
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->mDefaultFactory:Landroidx/lifecycle/c0$b;

    .line 32
    :cond_1f
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mDefaultFactory:Landroidx/lifecycle/c0$b;

    .line 34
    return-object v0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/activity/ComponentActivity$d;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    iget-object v0, v0, Landroidx/activity/ComponentActivity$d;->a:Ljava/lang/Object;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/n;

    .line 3
    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    return-object v0
.end method

.method public final getSavedStateRegistry()Lc1/c;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Lc1/d;

    .line 3
    iget-object v0, v0, Lc1/d;->b:Lc1/c;

    .line 5
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/e0;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->ensureViewModelStore()V

    .line 10
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/e0;

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0
.end method

.method public invalidateMenu()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/e;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/result/e;->a(IILandroid/content/Intent;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 12
    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    .line 6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ll0/a;

    .line 22
    invoke-interface {v1, p1}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Lc1/d;

    .line 3
    invoke-virtual {v0, p1}, Lc1/d;->b(Landroid/os/Bundle;)V

    .line 6
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Lf/b;

    .line 8
    iput-object p0, v0, Lf/b;->b:Landroid/content/Context;

    .line 10
    iget-object v0, v0, Lf/b;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1f

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lf/c;

    .line 28
    invoke-interface {v1, p0}, Lf/c;->a(Landroid/content/Context;)V

    .line 31
    goto :goto_f

    .line 32
    :cond_1f
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Landroidx/lifecycle/ReportFragment;->c(Landroid/app/Activity;)V

    .line 38
    invoke-static {}, Li0/a;->a()Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_36

    .line 44
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 46
    invoke-static {p0}, Landroidx/activity/ComponentActivity$c;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p1, Landroidx/activity/OnBackPressedDispatcher;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 52
    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher;->c()V

    .line 55
    :cond_36
    iget p1, p0, Landroidx/activity/ComponentActivity;->mContentLayoutId:I

    .line 57
    if-eqz p1, :cond_3d

    .line 59
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 62
    :cond_3d
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 5

    .line 1
    if-nez p1, :cond_21

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 6
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mMenuHostHelper:Lm0/m;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 11
    move-result-object v0

    .line 12
    iget-object p1, p1, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p1

    .line 18
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_21

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lm0/o;

    .line 30
    invoke-interface {v1, p2, v0}, Lm0/o;->c(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 33
    goto :goto_11

    .line 34
    :cond_21
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_28

    .line 12
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mMenuHostHelper:Lm0/m;

    .line 14
    iget-object p1, p1, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 20
    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_26

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lm0/o;

    .line 32
    invoke-interface {v2, p2}, Lm0/o;->a(Landroid/view/MenuItem;)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_13

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v1, v0

    .line 40
    :goto_27
    return v1

    .line 41
    :cond_28
    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnMultiWindowModeChanged:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/a;

    .line 3
    new-instance v2, Ld0/h;

    invoke-direct {v2, p1}, Ld0/h;-><init>(Z)V

    invoke-interface {v1, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    goto :goto_b

    :cond_20
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 6

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnMultiWindowModeChanged:Z

    const/4 v0, 0x0

    .line 5
    :try_start_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_25

    .line 6
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnMultiWindowModeChanged:Z

    .line 7
    iget-object p2, p0, Landroidx/activity/ComponentActivity;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/a;

    .line 8
    new-instance v2, Ld0/h;

    invoke-direct {v2, p1, v0}, Ld0/h;-><init>(ZI)V

    invoke-interface {v1, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    goto :goto_f

    :cond_24
    return-void

    :catchall_25
    move-exception p1

    .line 9
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnMultiWindowModeChanged:Z

    .line 10
    throw p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1  # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ll0/a;

    .line 22
    invoke-interface {v1, p1}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mMenuHostHelper:Lm0/m;

    .line 3
    iget-object v0, v0, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_18

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lm0/o;

    .line 21
    invoke-interface {v1, p2}, Lm0/o;->b(Landroid/view/Menu;)V

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 28
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnPictureInPictureModeChanged:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/a;

    .line 3
    new-instance v2, Ld0/n;

    invoke-direct {v2, p1}, Ld0/n;-><init>(Z)V

    invoke-interface {v1, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    goto :goto_b

    :cond_20
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 6

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnPictureInPictureModeChanged:Z

    const/4 v0, 0x0

    .line 5
    :try_start_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_25

    .line 6
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnPictureInPictureModeChanged:Z

    .line 7
    iget-object p2, p0, Landroidx/activity/ComponentActivity;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/a;

    .line 8
    new-instance v2, Ld0/n;

    invoke-direct {v2, p1, v0}, Ld0/n;-><init>(ZI)V

    invoke-interface {v1, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    goto :goto_f

    :cond_24
    return-void

    :catchall_25
    move-exception p1

    .line 9
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity;->mDispatchingOnPictureInPictureModeChanged:Z

    .line 10
    throw p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    if-nez p1, :cond_1d

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 6
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mMenuHostHelper:Lm0/m;

    .line 8
    iget-object p1, p1, Lm0/m;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_1d

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lm0/o;

    .line 26
    invoke-interface {p2, p3}, Lm0/o;->d(Landroid/view/Menu;)V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/e;

    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 5
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 10
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    .line 16
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-virtual {v0, p1, v2, v1}, Landroidx/activity/result/e;->a(IILandroid/content/Intent;)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1d

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 30
    :cond_1d
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->mViewModelStore:Landroidx/lifecycle/e0;

    .line 7
    if-nez v1, :cond_12

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/activity/ComponentActivity$d;

    .line 15
    if-eqz v2, :cond_12

    .line 17
    iget-object v1, v2, Landroidx/activity/ComponentActivity$d;->b:Landroidx/lifecycle/e0;

    .line 19
    :cond_12
    if-nez v1, :cond_18

    .line 21
    if-nez v0, :cond_18

    .line 23
    const/4 v0, 0x0

    .line 24
    return-object v0

    .line 25
    :cond_18
    new-instance v2, Landroidx/activity/ComponentActivity$d;

    .line 27
    invoke-direct {v2}, Landroidx/activity/ComponentActivity$d;-><init>()V

    .line 30
    iput-object v0, v2, Landroidx/activity/ComponentActivity$d;->a:Ljava/lang/Object;

    .line 32
    iput-object v1, v2, Landroidx/activity/ComponentActivity$d;->b:Landroidx/lifecycle/e0;

    .line 34
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/lifecycle/n;

    .line 7
    if-eqz v1, :cond_14

    .line 9
    check-cast v0, Landroidx/lifecycle/n;

    .line 11
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 13
    const-string v2, "setCurrentState"

    .line 15
    invoke-virtual {v0, v2}, Landroidx/lifecycle/n;->e(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->g(Landroidx/lifecycle/Lifecycle$State;)V

    .line 21
    :cond_14
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 24
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Lc1/d;

    .line 26
    invoke-virtual {v0, p1}, Lc1/d;->c(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 4
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ll0/a;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Ll0/a;->accept(Ljava/lang/Object;)V

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    return-void
.end method

.method public peekAvailableContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Lf/b;

    .line 3
    iget-object v0, v0, Lf/b;->b:Landroid/content/Context;

    .line 5
    return-object v0
.end method

.method public final registerForActivityResult(Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/a<",
            "TI;TO;>;",
            "Landroidx/activity/result/a<",
            "TO;>;)",
            "Landroidx/activity/result/b<",
            "TI;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/result/e;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lg/a;Landroidx/activity/result/e;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    return-object p1
.end method

.method public final registerForActivityResult(Lg/a;Landroidx/activity/result/e;Landroidx/activity/result/a;)Landroidx/activity/result/b;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lg/a<",
            "TI;TO;>;",
            "Landroidx/activity/result/e;",
            "Landroidx/activity/result/a<",
            "TO;>;)",
            "Landroidx/activity/result/b<",
            "TI;>;"
        }
    .end annotation

    const-string v0, "activity_rq#"

    .line 1
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0, p0, p1, p3}, Landroidx/activity/result/e;->c(Ljava/lang/String;Landroidx/lifecycle/m;Lg/a;Landroidx/activity/result/a;)Landroidx/activity/result/c;

    move-result-object p1

    return-object p1
.end method

.method public removeMenuProvider(Lm0/o;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mMenuHostHelper:Lm0/m;

    .line 3
    invoke-virtual {v0, p1}, Lm0/m;->c(Lm0/o;)V

    .line 6
    return-void
.end method

.method public final removeOnConfigurationChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroid/content/res/Configuration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final removeOnContextAvailableListener(Lf/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mContextAwareHelper:Lf/b;

    .line 3
    invoke-virtual {v0, p1}, Lf/b;->removeOnContextAvailableListener(Lf/c;)V

    .line 6
    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ld0/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final removeOnNewIntentListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ld0/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final removeOnTrimMemoryListener(Ll0/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public reportFullyDrawn()V
    .registers 2

    .line 1
    :try_start_0
    invoke-static {}, Le1/a;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    const-string v0, "reportFullyDrawn() for ComponentActivity"

    .line 9
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 12
    goto :goto_e

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    goto :goto_15

    .line 15
    :cond_e
    :goto_e
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_c

    .line 18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 21
    return-void

    .line 22
    :goto_15
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 25
    throw v0
.end method

.method public setContentView(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .param p1  # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V

    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;->initViewTreeOwners()V

    .line 6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
