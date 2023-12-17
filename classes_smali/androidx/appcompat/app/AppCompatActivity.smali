.class public Landroidx/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroidx/appcompat/app/i;


# instance fields
.field public a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lc1/c;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Landroidx/appcompat/app/g;

    .line 10
    invoke-direct {v1, p0}, Landroidx/appcompat/app/g;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 13
    const-string v2, "androidx:appcompat"

    .line 15
    invoke-virtual {v0, v2, v1}, Lc1/c;->c(Ljava/lang/String;Lc1/c$b;)V

    .line 18
    new-instance v0, Landroidx/appcompat/app/h;

    .line 20
    invoke-direct {v0, p0}, Landroidx/appcompat/app/h;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 23
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Lf/c;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/k;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public final closeOptionsMenu()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_21

    .line 23
    if-eqz v0, :cond_1e

    .line 25
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->closeOptionsMenu()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_21

    .line 31
    :cond_1e
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 34
    :cond_21
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 11
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 14
    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 16
    const/16 v2, 0x52

    .line 18
    if-ne v0, v2, :cond_1d

    .line 20
    if-eqz v1, :cond_1d

    .line 22
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/a;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1d

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_1d
    invoke-super {p0, p1}, Landroidx/core/app/ComponentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->d(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final g()Landroidx/appcompat/app/k;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    if-nez v0, :cond_e

    .line 5
    sget-object v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/t$a;

    .line 7
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1, p0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/i;Ljava/lang/Object;)V

    .line 13
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 17
    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/k;->h()Landroid/view/MenuInflater;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1
    sget v0, Landroidx/appcompat/widget/g1;->a:I

    .line 3
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final initViewTreeOwners()V
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

.method public final invalidateOptionsMenu()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/k;->k()V

    .line 8
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->m(Landroid/content/res/Configuration;)V

    .line 11
    return-void
.end method

.method public final onContentChanged()V
    .registers 1

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/k;->o()V

    .line 11
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_3f

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3f

    .line 14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_3f

    .line 24
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3f

    .line 30
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3f

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3f

    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_3f

    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3f

    .line 62
    move v0, v2

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    const/4 v0, 0x0

    .line 65
    :goto_40
    if-eqz v0, :cond_43

    .line 67
    return v2

    .line 68
    :cond_43
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 18
    iget-object p1, p1, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 20
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 23
    move-result p2

    .line 24
    const v1, 0x102002c

    .line 27
    const/4 v2, 0x0

    .line 28
    if-ne p2, v1, :cond_c9

    .line 30
    if-eqz p1, :cond_c9

    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/app/a0;->getDisplayOptions()I

    .line 35
    move-result p1

    .line 36
    and-int/lit8 p1, p1, 0x4

    .line 38
    if-eqz p1, :cond_c9

    .line 40
    invoke-static {p0}, Ld0/i;->a(Landroid/app/Activity;)Landroid/content/Intent;

    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_c7

    .line 46
    invoke-static {p0, p1}, Ld0/i$a;->c(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_c3

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 54
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {p0}, Ld0/i;->a(Landroid/app/Activity;)Landroid/content/Intent;

    .line 60
    move-result-object p2

    .line 61
    if-nez p2, :cond_42

    .line 63
    invoke-static {p0}, Ld0/i;->a(Landroid/app/Activity;)Landroid/content/Intent;

    .line 66
    move-result-object p2

    .line 67
    :cond_42
    if-eqz p2, :cond_7a

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 72
    move-result-object v1

    .line 73
    if-nez v1, :cond_52

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 82
    move-result-object v1

    .line 83
    :cond_52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result v3

    .line 87
    :try_start_56
    invoke-static {p0, v1}, Ld0/i;->b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    move-result-object v1

    .line 91
    :goto_5a
    if-eqz v1, :cond_68

    .line 93
    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 99
    move-result-object v1

    .line 100
    invoke-static {p0, v1}, Ld0/i;->b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    move-result-object v1
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_67} :catch_6c

    .line 104
    goto :goto_5a

    .line 105
    :cond_68
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_7a

    .line 109
    :catch_6c
    move-exception p1

    .line 110
    const-string p2, "TaskStackBuilder"

    .line 112
    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    .line 114
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 119
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 122
    throw p2

    .line 123
    :cond_7a
    :goto_7a
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    move-result p2

    .line 127
    if-nez p2, :cond_bb

    .line 129
    new-array p2, v2, [Landroid/content/Intent;

    .line 131
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    check-cast p1, [Landroid/content/Intent;

    .line 137
    new-instance p2, Landroid/content/Intent;

    .line 139
    aget-object v1, p1, v2

    .line 141
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 144
    const v1, 0x1000c000

    .line 147
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    move-result-object p2

    .line 151
    aput-object p2, p1, v2

    .line 153
    const/4 p2, 0x0

    .line 154
    invoke-static {p0, p1, p2}, Landroidx/core/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    .line 157
    move-result p2

    .line 158
    if-nez p2, :cond_b1

    .line 160
    new-instance p2, Landroid/content/Intent;

    .line 162
    array-length v1, p1

    .line 163
    add-int/lit8 v1, v1, -0x1

    .line 165
    aget-object p1, p1, v1

    .line 167
    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 170
    const/high16 p1, 0x10000000

    .line 172
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    :cond_b1
    :try_start_b1
    sget p1, Ld0/a;->a:I

    .line 180
    invoke-static {p0}, Ld0/a$a;->a(Landroid/app/Activity;)V
    :try_end_b6
    .catch Ljava/lang/IllegalStateException; {:try_start_b1 .. :try_end_b6} :catch_b7

    .line 183
    goto :goto_c8

    .line 184
    :catch_b7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 187
    goto :goto_c8

    .line 188
    :cond_bb
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 190
    const-string p2, "No intents added to TaskStackBuilder; cannot startActivities"

    .line 192
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    throw p1

    .line 196
    :cond_c3
    invoke-static {p0, p1}, Ld0/i$a;->b(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 199
    goto :goto_c8

    .line 200
    :cond_c7
    move v0, v2

    .line 201
    :goto_c8
    return v0

    .line 202
    :cond_c9
    return v2
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->J()V

    .line 13
    return-void
.end method

.method public final onPostResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/k;->p()V

    .line 11
    return-void
.end method

.method public final onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/k;->q()V

    .line 11
    return-void
.end method

.method public final onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/appcompat/app/k;->r()V

    .line 11
    return-void
.end method

.method public final onSupportActionModeFinished(Lm/a;)V
    .registers 2

    return-void
.end method

.method public final onSupportActionModeStarted(Lm/a;)V
    .registers 2

    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/k;->y(Ljava/lang/CharSequence;)V

    .line 11
    return-void
.end method

.method public final onWindowStartingSupportActionMode(Lm/a$a;)Lm/a;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public final openOptionsMenu()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->O()V

    .line 10
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->q:Landroidx/appcompat/app/a0;

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_21

    .line 23
    if-eqz v0, :cond_1e

    .line 25
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->openOptionsMenu()Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_21

    .line 31
    :cond_1e
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 34
    :cond_21
    return-void
.end method

.method public final setContentView(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->u(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->v(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/k;->w(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTheme(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/k;->x(I)V

    .line 11
    return-void
.end method

.method public final supportInvalidateOptionsMenu()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->g()Landroidx/appcompat/app/k;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/k;->k()V

    .line 8
    return-void
.end method
