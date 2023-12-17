.class public final Landroidx/appcompat/app/a0;
.super Landroidx/appcompat/app/a;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/a0$e;,
        Landroidx/appcompat/app/a0$d;
    }
.end annotation


# static fields
.field public static final F:Landroid/view/animation/AccelerateInterpolator;

.field public static final G:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Landroidx/appcompat/app/a0$a;

.field public final D:Landroidx/appcompat/app/a0$b;

.field public final E:Landroidx/appcompat/app/a0$c;

.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroid/app/Activity;

.field public d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public e:Landroidx/appcompat/widget/ActionBarContainer;

.field public f:Landroidx/appcompat/widget/d0;

.field public g:Landroidx/appcompat/widget/ActionBarContextView;

.field public h:Landroid/view/View;

.field public i:Landroidx/appcompat/widget/r0;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a0$e;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroidx/appcompat/app/a0$e;

.field public l:I

.field public m:Z

.field public n:Landroidx/appcompat/app/a0$d;

.field public o:Landroidx/appcompat/app/a0$d;

.field public p:Lm/a$a;

.field public q:Z

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Lm/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 3
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 6
    sput-object v0, Landroidx/appcompat/app/a0;->F:Landroid/view/animation/AccelerateInterpolator;

    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 10
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 13
    sput-object v0, Landroidx/appcompat/app/a0;->G:Landroid/view/animation/DecelerateInterpolator;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/appcompat/app/a0;->l:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/app/a0;->t:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->u:Z

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->y:Z

    .line 8
    new-instance v0, Landroidx/appcompat/app/a0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$a;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->C:Landroidx/appcompat/app/a0$a;

    .line 9
    new-instance v0, Landroidx/appcompat/app/a0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$b;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->D:Landroidx/appcompat/app/a0$b;

    .line 10
    new-instance v0, Landroidx/appcompat/app/a0$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$c;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->E:Landroidx/appcompat/app/a0$c;

    .line 11
    iput-object p1, p0, Landroidx/appcompat/app/a0;->c:Landroid/app/Activity;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->a(Landroid/view/View;)V

    if-nez p2, :cond_49

    const p2, 0x1020002

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    :cond_49
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Landroidx/appcompat/app/a0;->l:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Landroidx/appcompat/app/a0;->t:I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->u:Z

    .line 22
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->y:Z

    .line 23
    new-instance v0, Landroidx/appcompat/app/a0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$a;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->C:Landroidx/appcompat/app/a0$a;

    .line 24
    new-instance v0, Landroidx/appcompat/app/a0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$b;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->D:Landroidx/appcompat/app/a0$b;

    .line 25
    new-instance v0, Landroidx/appcompat/app/a0$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$c;-><init>(Landroidx/appcompat/app/a0;)V

    iput-object v0, p0, Landroidx/appcompat/app/a0;->E:Landroidx/appcompat/app/a0$c;

    .line 26
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 7

    .line 1
    sget v0, Lh/f;->decor_content_parent:I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 9
    iput-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    .line 16
    :cond_f
    sget v0, Lh/f;->action_bar:I

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Landroidx/appcompat/widget/d0;

    .line 24
    if-eqz v1, :cond_1c

    .line 26
    check-cast v0, Landroidx/appcompat/widget/d0;

    .line 28
    goto :goto_26

    .line 29
    :cond_1c
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    .line 31
    if-eqz v1, :cond_c9

    .line 33
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 35
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/d0;

    .line 38
    move-result-object v0

    .line 39
    :goto_26
    iput-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 41
    sget v0, Lh/f;->action_context_bar:I

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 49
    iput-object v0, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    sget v0, Lh/f;->action_bar_container:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    .line 59
    iput-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 61
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 63
    if-eqz v0, :cond_ac

    .line 65
    iget-object v1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 67
    if-eqz v1, :cond_ac

    .line 69
    if-eqz p1, :cond_ac

    .line 71
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->getContext()Landroid/content/Context;

    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 77
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 79
    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->z()I

    .line 82
    move-result p1

    .line 83
    and-int/lit8 p1, p1, 0x4

    .line 85
    const/4 v0, 0x1

    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz p1, :cond_5a

    .line 89
    move p1, v0

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move p1, v1

    .line 92
    :goto_5b
    if-eqz p1, :cond_5f

    .line 94
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->m:Z

    .line 96
    :cond_5f
    iget-object v2, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 98
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 101
    move-result-object v3

    .line 102
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 104
    const/16 v4, 0xe

    .line 106
    if-ge v3, v4, :cond_6d

    .line 108
    move v3, v0

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move v3, v1

    .line 111
    :goto_6e
    if-nez v3, :cond_75

    .line 113
    if-eqz p1, :cond_73

    .line 115
    goto :goto_75

    .line 116
    :cond_73
    move p1, v1

    .line 117
    goto :goto_76

    .line 118
    :cond_75
    :goto_75
    move p1, v0

    .line 119
    :goto_76
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setHomeButtonEnabled(Z)V

    .line 122
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object p1

    .line 126
    sget v2, Lh/b;->abc_action_bar_embed_tabs:I

    .line 128
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 131
    move-result p1

    .line 132
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setHasEmbeddedTabs(Z)V

    .line 135
    iget-object p1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 137
    const/4 v2, 0x0

    .line 138
    sget-object v3, Lh/j;->ActionBar:[I

    .line 140
    sget v4, Lh/a;->actionBarStyle:I

    .line 142
    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 145
    move-result-object p1

    .line 146
    sget v2, Lh/j;->ActionBar_hideOnContentScroll:I

    .line 148
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_9c

    .line 154
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->setHideOnContentScrollEnabled(Z)V

    .line 157
    :cond_9c
    sget v0, Lh/j;->ActionBar_elevation:I

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_a8

    .line 165
    int-to-float v0, v0

    .line 166
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->setElevation(F)V

    .line 169
    :cond_a8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    return-void

    .line 173
    :cond_ac
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    const-class v1, Landroidx/appcompat/app/a0;

    .line 182
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, " can only be used with a compatible window decor layout"

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    throw p1

    .line 202
    :cond_c9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 204
    const-string v1, "Can\'t make a decor toolbar out of "

    .line 206
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    move-result-object v1

    .line 210
    if-eqz v0, :cond_dc

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    goto :goto_de

    .line 221
    :cond_dc
    const-string v0, "null"

    .line 223
    :goto_de
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    throw p1
.end method

.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->addTab(Landroidx/appcompat/app/a$d;Z)V

    return-void
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;I)V
    .registers 4

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/app/a0;->addTab(Landroidx/appcompat/app/a$d;IZ)V

    return-void
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;IZ)V
    .registers 8

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->ensureTabsExist()V

    .line 15
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/r0;->a(Landroidx/appcompat/app/a$d;Z)Landroidx/appcompat/widget/r0$c;

    move-result-object v1

    .line 17
    iget-object v2, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    new-instance v3, Landroidx/appcompat/widget/i0$a;

    invoke-direct {v3}, Landroidx/appcompat/widget/i0$a;-><init>()V

    invoke-virtual {v2, v1, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v2, v0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v2, :cond_21

    .line 19
    invoke-virtual {v2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/r0$a;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_21
    if-eqz p3, :cond_27

    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/r0$c;->setSelected(Z)V

    .line 21
    :cond_27
    iget-boolean v1, v0, Landroidx/appcompat/widget/r0;->e:Z

    if-eqz v1, :cond_2e

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 23
    :cond_2e
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/a0;->configureTab(Landroidx/appcompat/app/a$d;I)V

    if-eqz p3, :cond_36

    .line 24
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    :cond_36
    return-void
.end method

.method public final addTab(Landroidx/appcompat/app/a$d;Z)V
    .registers 7

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->ensureTabsExist()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/r0;->a(Landroidx/appcompat/app/a$d;Z)Landroidx/appcompat/widget/r0$c;

    move-result-object v1

    .line 6
    iget-object v2, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    new-instance v3, Landroidx/appcompat/widget/i0$a;

    invoke-direct {v3}, Landroidx/appcompat/widget/i0$a;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v2, v0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    if-eqz v2, :cond_21

    .line 8
    invoke-virtual {v2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/r0$a;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_21
    if-eqz p2, :cond_27

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/r0$c;->setSelected(Z)V

    .line 10
    :cond_27
    iget-boolean v1, v0, Landroidx/appcompat/widget/r0;->e:Z

    if-eqz v1, :cond_2e

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 12
    :cond_2e
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->configureTab(Landroidx/appcompat/app/a$d;I)V

    if-eqz p2, :cond_3c

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    :cond_3c
    return-void
.end method

.method public final animateToMode(Z)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_15

    .line 4
    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->x:Z

    .line 6
    if-nez v1, :cond_25

    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroidx/appcompat/app/a0;->x:Z

    .line 11
    iget-object v2, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 13
    if-eqz v2, :cond_11

    .line 15
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 18
    :cond_11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    .line 21
    goto :goto_25

    .line 22
    :cond_15
    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->x:Z

    .line 24
    if-eqz v1, :cond_25

    .line 26
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->x:Z

    .line 28
    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 30
    if-eqz v1, :cond_22

    .line 32
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 35
    :cond_22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    .line 38
    :cond_25
    :goto_25
    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 40
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 42
    invoke-static {v1}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x4

    .line 47
    const/16 v3, 0x8

    .line 49
    if-eqz v1, :cond_8a

    .line 51
    const-wide/16 v4, 0x64

    .line 53
    const-wide/16 v6, 0xc8

    .line 55
    if-eqz p1, :cond_45

    .line 57
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 59
    invoke-interface {p1, v2, v4, v5}, Landroidx/appcompat/widget/d0;->t(IJ)Lm0/o0;

    .line 62
    move-result-object p1

    .line 63
    iget-object v1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 65
    invoke-virtual {v1, v0, v6, v7}, Landroidx/appcompat/widget/a;->e(IJ)Lm0/o0;

    .line 68
    move-result-object v0

    .line 69
    goto :goto_51

    .line 70
    :cond_45
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 72
    invoke-interface {p1, v0, v6, v7}, Landroidx/appcompat/widget/d0;->t(IJ)Lm0/o0;

    .line 75
    move-result-object v0

    .line 76
    iget-object p1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 78
    invoke-virtual {p1, v3, v4, v5}, Landroidx/appcompat/widget/a;->e(IJ)Lm0/o0;

    .line 81
    move-result-object p1

    .line 82
    :goto_51
    new-instance v1, Lm/g;

    .line 84
    invoke-direct {v1}, Lm/g;-><init>()V

    .line 87
    iget-object v2, v1, Lm/g;->a:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p1, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 94
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/view/View;

    .line 100
    if-eqz p1, :cond_6e

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    .line 109
    move-result-wide v2

    .line 110
    goto :goto_70

    .line 111
    :cond_6e
    const-wide/16 v2, 0x0

    .line 113
    :goto_70
    iget-object p1, v0, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 115
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/view/View;

    .line 121
    if-eqz p1, :cond_81

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 130
    :cond_81
    iget-object p1, v1, Lm/g;->a:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v1}, Lm/g;->b()V

    .line 138
    goto :goto_a1

    .line 139
    :cond_8a
    if-eqz p1, :cond_97

    .line 141
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 143
    invoke-interface {p1, v2}, Landroidx/appcompat/widget/d0;->w(I)V

    .line 146
    iget-object p1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 148
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 151
    goto :goto_a1

    .line 152
    :cond_97
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 154
    invoke-interface {p1, v0}, Landroidx/appcompat/widget/d0;->w(I)V

    .line 157
    iget-object p1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 159
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 162
    :goto_a1
    return-void
.end method

.method public final collapseActionView()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->l()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 13
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->collapseActionView()V

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final configureTab(Landroidx/appcompat/app/a$d;I)V
    .registers 4

    .line 1
    check-cast p1, Landroidx/appcompat/app/a0$e;

    .line 3
    iget-object v0, p1, Landroidx/appcompat/app/a0$e;->a:Landroidx/appcompat/app/a$e;

    .line 5
    if-eqz v0, :cond_23

    .line 7
    iput p2, p1, Landroidx/appcompat/app/a0$e;->f:I

    .line 9
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 14
    iget-object p1, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result p1

    .line 20
    :goto_13
    add-int/lit8 p2, p2, 0x1

    .line 22
    if-ge p2, p1, :cond_22

    .line 24
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/appcompat/app/a0$e;

    .line 32
    iput p2, v0, Landroidx/appcompat/app/a0$e;->f:I

    .line 34
    goto :goto_13

    .line 35
    :cond_22
    return-void

    .line 36
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    const-string p2, "Action Bar Tab must have a Callback"

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1
.end method

.method public final dispatchMenuVisibilityChanged(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->q:Z

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/a0;->q:Z

    .line 8
    iget-object p1, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_e
    if-ge v0, p1, :cond_1e

    .line 17
    iget-object v1, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/appcompat/app/a$b;

    .line 25
    invoke-interface {v1}, Landroidx/appcompat/app/a$b;->a()V

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_e

    .line 31
    :cond_1e
    return-void
.end method

.method public final ensureTabsExist()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Landroidx/appcompat/widget/r0;

    .line 8
    iget-object v1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 10
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/r0;-><init>(Landroid/content/Context;)V

    .line 13
    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->s:Z

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1a

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 23
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/d0;->i(Landroidx/appcompat/widget/r0;)V

    .line 26
    goto :goto_38

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getNavigationMode()I

    .line 30
    move-result v1

    .line 31
    const/4 v3, 0x2

    .line 32
    if-ne v1, v3, :cond_2e

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v1, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 39
    if-eqz v1, :cond_33

    .line 41
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 43
    invoke-static {v1}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 46
    goto :goto_33

    .line 47
    :cond_2e
    const/16 v1, 0x8

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_33
    :goto_33
    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 54
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/r0;)V

    .line 57
    :goto_38
    iput-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 59
    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->getCustomView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getDisplayOptions()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->z()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getElevation()F
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lm0/g0$i;->i(Landroid/view/View;)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getHideOffset()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getNavigationItemCount()I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_15

    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_e

    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 24
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->E()I

    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public final getNavigationMode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getSelectedNavigationIndex()I
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_15

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v0, v1, :cond_e

    .line 14
    return v2

    .line 15
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    .line 17
    if-eqz v0, :cond_14

    .line 19
    iget v2, v0, Landroidx/appcompat/app/a0$e;->f:I

    .line 21
    :cond_14
    return v2

    .line 22
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 24
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->A()I

    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public final getSelectedTab()Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    .line 3
    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->y()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getTabAt(I)Landroidx/appcompat/app/a$d;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 9
    return-object p1
.end method

.method public final getTabCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getThemedContext()Landroid/content/Context;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->b:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_27

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    .line 7
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 10
    iget-object v1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    move-result-object v1

    .line 16
    sget v2, Lh/a;->actionBarWidgetTheme:I

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 24
    if-eqz v0, :cond_23

    .line 26
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 28
    iget-object v2, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 30
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object v1, p0, Landroidx/appcompat/app/a0;->b:Landroid/content/Context;

    .line 35
    goto :goto_27

    .line 36
    :cond_23
    iget-object v0, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Landroidx/appcompat/app/a0;->b:Landroid/content/Context;

    .line 40
    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/appcompat/app/a0;->b:Landroid/content/Context;

    .line 42
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->getTitle()Ljava/lang/CharSequence;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final hide()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    .line 12
    :cond_b
    return-void
.end method

.method public final isHideOnContentScrollEnabled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 3
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    .line 5
    return v0
.end method

.method public final isShowing()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getHeight()I

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->y:Z

    .line 7
    if-eqz v1, :cond_12

    .line 9
    if-eqz v0, :cond_10

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getHideOffset()I

    .line 14
    move-result v1

    .line 15
    if-ge v1, v0, :cond_12

    .line 17
    :cond_10
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public final isTitleTruncated()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->m()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public final newTab()Landroidx/appcompat/app/a$d;
    .registers 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/a0$e;

    .line 3
    invoke-direct {v0, p0}, Landroidx/appcompat/app/a0$e;-><init>(Landroidx/appcompat/app/a0;)V

    .line 6
    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p1

    .line 7
    sget v0, Lh/b;->abc_action_bar_embed_tabs:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setHasEmbeddedTabs(Z)V

    .line 16
    return-void
.end method

.method public final onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v0, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 9
    if-eqz v0, :cond_27

    .line 11
    if-eqz p2, :cond_11

    .line 13
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 16
    move-result v2

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v2, -0x1

    .line 19
    :goto_12
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eq v2, v3, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v3, v1

    .line 32
    :goto_1f
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 35
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    :cond_27
    return v1
.end method

.method public final removeAllTabs()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    .line 9
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 16
    if-eqz v0, :cond_2a

    .line 18
    iget-object v1, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 20
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    iget-object v1, v0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 25
    if-eqz v1, :cond_23

    .line 27
    invoke-virtual {v1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/appcompat/widget/r0$a;

    .line 33
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 36
    :cond_23
    iget-boolean v1, v0, Landroidx/appcompat/widget/r0;->e:Z

    .line 38
    if-eqz v1, :cond_2a

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 43
    :cond_2a
    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroidx/appcompat/app/a0;->l:I

    .line 46
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/a$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->r:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final removeTab(Landroidx/appcompat/app/a$d;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->removeTabAt(I)V

    .line 8
    return-void
.end method

.method public final removeTabAt(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    .line 8
    if-eqz v1, :cond_c

    .line 10
    iget v1, v1, Landroidx/appcompat/app/a0$e;->f:I

    .line 12
    goto :goto_e

    .line 13
    :cond_c
    iget v1, p0, Landroidx/appcompat/app/a0;->l:I

    .line 15
    :goto_e
    iget-object v2, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 17
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 20
    iget-object v2, v0, Landroidx/appcompat/widget/r0;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 22
    if-eqz v2, :cond_20

    .line 24
    invoke-virtual {v2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/appcompat/widget/r0$a;

    .line 30
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 33
    :cond_20
    iget-boolean v2, v0, Landroidx/appcompat/widget/r0;->e:Z

    .line 35
    if-eqz v2, :cond_27

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 40
    :cond_27
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroidx/appcompat/app/a0$e;

    .line 48
    const/4 v2, -0x1

    .line 49
    if-eqz v0, :cond_34

    .line 51
    iput v2, v0, Landroidx/appcompat/app/a0$e;->f:I

    .line 53
    :cond_34
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v0

    .line 59
    move v3, p1

    .line 60
    :goto_3b
    if-ge v3, v0, :cond_4a

    .line 62
    iget-object v4, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Landroidx/appcompat/app/a0$e;

    .line 70
    iput v3, v4, Landroidx/appcompat/app/a0$e;->f:I

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_3b

    .line 75
    :cond_4a
    if-ne v1, p1, :cond_67

    .line 77
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_56

    .line 85
    const/4 p1, 0x0

    .line 86
    goto :goto_64

    .line 87
    :cond_56
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 89
    const/4 v1, 0x0

    .line 90
    add-int/2addr p1, v2

    .line 91
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result p1

    .line 95
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 101
    :goto_64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    .line 104
    :cond_67
    return-void
.end method

.method public final requestFocus()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->x()Landroidx/appcompat/widget/Toolbar;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_13

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public final selectTab(Landroidx/appcompat/app/a$d;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getNavigationMode()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_11

    .line 9
    if-eqz p1, :cond_e

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    .line 14
    move-result v1

    .line 15
    :cond_e
    iput v1, p0, Landroidx/appcompat/app/a0;->l:I

    .line 17
    return-void

    .line 18
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Landroid/app/Activity;

    .line 20
    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    .line 22
    if-eqz v0, :cond_37

    .line 24
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 26
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->x()Landroidx/appcompat/widget/Toolbar;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_37

    .line 36
    iget-object v0, p0, Landroidx/appcompat/app/a0;->c:Landroid/app/Activity;

    .line 38
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    new-instance v2, Landroidx/fragment/app/a;

    .line 49
    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 52
    invoke-virtual {v2}, Landroidx/fragment/app/b0;->g()V

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    const/4 v2, 0x0

    .line 57
    :goto_38
    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    .line 59
    if-ne v0, p1, :cond_61

    .line 61
    if-eqz v0, :cond_80

    .line 63
    iget-object v1, v0, Landroidx/appcompat/app/a0$e;->a:Landroidx/appcompat/app/a$e;

    .line 65
    invoke-interface {v1, v0, v2}, Landroidx/appcompat/app/a$e;->onTabReselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 68
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 70
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    .line 73
    move-result p1

    .line 74
    iget-object v1, v0, Landroidx/appcompat/widget/r0;->c:Landroidx/appcompat/widget/i0;

    .line 76
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 79
    move-result-object p1

    .line 80
    iget-object v1, v0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    .line 82
    if-eqz v1, :cond_56

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    :cond_56
    new-instance v1, Landroidx/appcompat/widget/q0;

    .line 89
    invoke-direct {v1, v0, p1}, Landroidx/appcompat/widget/q0;-><init>(Landroidx/appcompat/widget/r0;Landroid/view/View;)V

    .line 92
    iput-object v1, v0, Landroidx/appcompat/widget/r0;->a:Landroidx/appcompat/widget/q0;

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 97
    goto :goto_80

    .line 98
    :cond_61
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 100
    if-eqz p1, :cond_69

    .line 102
    invoke-virtual {p1}, Landroidx/appcompat/app/a$d;->getPosition()I

    .line 105
    move-result v1

    .line 106
    :cond_69
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/r0;->setTabSelected(I)V

    .line 109
    iget-object v0, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    .line 111
    if-eqz v0, :cond_75

    .line 113
    iget-object v1, v0, Landroidx/appcompat/app/a0$e;->a:Landroidx/appcompat/app/a$e;

    .line 115
    invoke-interface {v1, v0, v2}, Landroidx/appcompat/app/a$e;->onTabUnselected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 118
    :cond_75
    check-cast p1, Landroidx/appcompat/app/a0$e;

    .line 120
    iput-object p1, p0, Landroidx/appcompat/app/a0;->k:Landroidx/appcompat/app/a0$e;

    .line 122
    if-eqz p1, :cond_80

    .line 124
    iget-object v0, p1, Landroidx/appcompat/app/a0$e;->a:Landroidx/appcompat/app/a$e;

    .line 126
    invoke-interface {v0, p1, v2}, Landroidx/appcompat/app/a$e;->onTabSelected(Landroidx/appcompat/app/a$d;Landroidx/fragment/app/b0;)V

    .line 129
    :cond_80
    :goto_80
    if-eqz v2, :cond_8d

    .line 131
    iget-object p1, v2, Landroidx/fragment/app/b0;->c:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_8d

    .line 139
    invoke-virtual {v2}, Landroidx/fragment/app/a;->p()I

    .line 142
    :cond_8d
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public final setCustomView(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 2
    invoke-interface {v1}, Landroidx/appcompat/widget/d0;->x()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public final setCustomView(Landroid/view/View;)V
    .registers 3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public final setCustomView(Landroid/view/View;Landroidx/appcompat/app/a$a;)V
    .registers 3

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p2, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {p2, p1}, Landroidx/appcompat/widget/d0;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public final setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->m:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setDisplayHomeAsUpEnabled(Z)V

    .line 8
    :cond_7
    return-void
.end method

.method public final setDisplayHomeAsUpEnabled(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p1, :cond_5

    .line 4
    move p1, v0

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    .line 10
    return-void
.end method

.method public final setDisplayOptions(I)V
    .registers 3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->m:Z

    .line 2
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->n(I)V

    return-void
.end method

.method public final setDisplayOptions(II)V
    .registers 5

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->z()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroidx/appcompat/app/a0;->m:Z

    .line 5
    :cond_d
    iget-object v1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/d0;->n(I)V

    return-void
.end method

.method public final setDisplayShowCustomEnabled(Z)V
    .registers 3

    .line 1
    const/16 v0, 0x10

    .line 3
    if-eqz p1, :cond_6

    .line 5
    move p1, v0

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    .line 11
    return-void
.end method

.method public final setDisplayShowHomeEnabled(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_5

    .line 4
    move p1, v0

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    const/4 p1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    .line 10
    return-void
.end method

.method public final setDisplayShowTitleEnabled(Z)V
    .registers 3

    .line 1
    const/16 v0, 0x8

    .line 3
    if-eqz p1, :cond_6

    .line 5
    move p1, v0

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    :goto_7
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    .line 11
    return-void
.end method

.method public final setDisplayUseLogoEnabled(Z)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/a0;->setDisplayOptions(II)V

    .line 5
    return-void
.end method

.method public final setElevation(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 3
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0, p1}, Lm0/g0$i;->s(Landroid/view/View;F)V

    .line 8
    return-void
.end method

.method public final setHasEmbeddedTabs(Z)V
    .registers 6

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/a0;->s:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_12

    .line 6
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 8
    invoke-interface {p1, v0}, Landroidx/appcompat/widget/d0;->i(Landroidx/appcompat/widget/r0;)V

    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 13
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 15
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/r0;)V

    .line 18
    goto :goto_1e

    .line 19
    :cond_12
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 21
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/r0;)V

    .line 24
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 26
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 28
    invoke-interface {p1, v0}, Landroidx/appcompat/widget/d0;->i(Landroidx/appcompat/widget/r0;)V

    .line 31
    :goto_1e
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getNavigationMode()I

    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x2

    .line 36
    const/4 v1, 0x1

    .line 37
    const/4 v2, 0x0

    .line 38
    if-ne p1, v0, :cond_29

    .line 40
    move p1, v1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move p1, v2

    .line 43
    :goto_2a
    iget-object v0, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 45
    if-eqz v0, :cond_42

    .line 47
    if-eqz p1, :cond_3d

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 54
    if-eqz v0, :cond_42

    .line 56
    sget-object v3, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 58
    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 61
    goto :goto_42

    .line 62
    :cond_3d
    const/16 v3, 0x8

    .line 64
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_42
    :goto_42
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 69
    iget-boolean v3, p0, Landroidx/appcompat/app/a0;->s:Z

    .line 71
    if-nez v3, :cond_4c

    .line 73
    if-eqz p1, :cond_4c

    .line 75
    move v3, v1

    .line 76
    goto :goto_4d

    .line 77
    :cond_4c
    move v3, v2

    .line 78
    :goto_4d
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/d0;->H(Z)V

    .line 81
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 83
    iget-boolean v3, p0, Landroidx/appcompat/app/a0;->s:Z

    .line 85
    if-nez v3, :cond_59

    .line 87
    if-eqz p1, :cond_59

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    move v1, v2

    .line 91
    :goto_5a
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 94
    return-void
.end method

.method public final setHideOffset(I)V
    .registers 3

    .line 1
    if-eqz p1, :cond_11

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 5
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1

    .line 18
    :cond_11
    :goto_11
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 20
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 23
    return-void
.end method

.method public final setHideOnContentScrollEnabled(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_11

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 5
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1

    .line 18
    :cond_11
    :goto_11
    iput-boolean p1, p0, Landroidx/appcompat/app/a0;->B:Z

    .line 20
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 22
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 25
    return-void
.end method

.method public final setHomeActionContentDescription(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->B(I)V

    return-void
.end method

.method public final setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHomeAsUpIndicator(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->v(I)V

    return-void
.end method

.method public final setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->G(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setHomeButtonEnabled(Z)V
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {p1}, Landroidx/appcompat/widget/d0;->j()V

    .line 6
    return-void
.end method

.method public final setIcon(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setIcon(I)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/a$c;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    new-instance v1, Landroidx/appcompat/app/v;

    .line 5
    invoke-direct {v1, p2}, Landroidx/appcompat/app/v;-><init>(Landroidx/appcompat/app/a$c;)V

    .line 8
    invoke-interface {v0, p1, v1}, Landroidx/appcompat/widget/d0;->D(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/v;)V

    .line 11
    return-void
.end method

.method public final setLogo(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->r(I)V

    return-void
.end method

.method public final setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->k(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setNavigationMode(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_a

    .line 10
    goto :goto_1b

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->getSelectedNavigationIndex()I

    .line 14
    move-result v2

    .line 15
    iput v2, p0, Landroidx/appcompat/app/a0;->l:I

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    .line 21
    iget-object v2, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 23
    const/16 v3, 0x8

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :goto_1b
    if-eq v0, p1, :cond_2a

    .line 30
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->s:Z

    .line 32
    if-nez v0, :cond_2a

    .line 34
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 36
    if-eqz v0, :cond_2a

    .line 38
    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 40
    invoke-static {v0}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 43
    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 45
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->u(I)V

    .line 48
    const/4 v0, 0x0

    .line 49
    if-eq p1, v1, :cond_33

    .line 51
    goto :goto_45

    .line 52
    :cond_33
    invoke-virtual {p0}, Landroidx/appcompat/app/a0;->ensureTabsExist()V

    .line 55
    iget-object v2, p0, Landroidx/appcompat/app/a0;->i:Landroidx/appcompat/widget/r0;

    .line 57
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget v2, p0, Landroidx/appcompat/app/a0;->l:I

    .line 62
    const/4 v3, -0x1

    .line 63
    if-eq v2, v3, :cond_45

    .line 65
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/a0;->setSelectedNavigationItem(I)V

    .line 68
    iput v3, p0, Landroidx/appcompat/app/a0;->l:I

    .line 70
    :cond_45
    :goto_45
    iget-object v2, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 72
    const/4 v3, 0x1

    .line 73
    if-ne p1, v1, :cond_50

    .line 75
    iget-boolean v4, p0, Landroidx/appcompat/app/a0;->s:Z

    .line 77
    if-nez v4, :cond_50

    .line 79
    move v4, v3

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move v4, v0

    .line 82
    :goto_51
    invoke-interface {v2, v4}, Landroidx/appcompat/widget/d0;->H(Z)V

    .line 85
    iget-object v2, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 87
    if-ne p1, v1, :cond_5d

    .line 89
    iget-boolean p1, p0, Landroidx/appcompat/app/a0;->s:Z

    .line 91
    if-nez p1, :cond_5d

    .line 93
    move v0, v3

    .line 94
    :cond_5d
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 97
    return-void
.end method

.method public final setSelectedNavigationItem(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0}, Landroidx/appcompat/widget/d0;->s()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_20

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_18

    .line 13
    iget-object v0, p0, Landroidx/appcompat/app/a0;->j:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroidx/appcompat/app/a$d;

    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->selectTab(Landroidx/appcompat/app/a$d;)V

    .line 24
    goto :goto_25

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    const-string v0, "setSelectedNavigationIndex not valid for current navigation mode"

    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1

    .line 33
    :cond_20
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 35
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->q(I)V

    .line 38
    :goto_25
    return-void
.end method

.method public final setShowHideAnimationEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/app/a0;->A:Z

    .line 3
    if-nez p1, :cond_b

    .line 5
    iget-object p1, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    .line 7
    if-eqz p1, :cond_b

    .line 9
    invoke-virtual {p1}, Lm/g;->a()V

    .line 12
    :cond_b
    return-void
.end method

.method public final setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public final setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
.end method

.method public final setSubtitle(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->p(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->f:Landroidx/appcompat/widget/d0;

    .line 3
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public final show()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/a0;->updateVisibility(Z)V

    .line 11
    :cond_a
    return-void
.end method

.method public final startActionMode(Lm/a$a;)Lm/a;
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/a0$d;->a()V

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 14
    iget-object v0, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 19
    new-instance v0, Landroidx/appcompat/app/a0$d;

    .line 21
    iget-object v1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/a0$d;-><init>(Landroidx/appcompat/app/a0;Landroid/content/Context;Lm/a$a;)V

    .line 30
    iget-object p1, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h;->stopDispatchingItemsChanged()V

    .line 35
    :try_start_22
    iget-object p1, v0, Landroidx/appcompat/app/a0$d;->e:Lm/a$a;

    .line 37
    iget-object v1, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 39
    invoke-interface {p1, v0, v1}, Lm/a$a;->b(Lm/a;Landroidx/appcompat/view/menu/h;)Z

    .line 42
    move-result p1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_42

    .line 43
    iget-object v1, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 45
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 48
    if-eqz p1, :cond_40

    .line 50
    iput-object v0, p0, Landroidx/appcompat/app/a0;->n:Landroidx/appcompat/app/a0$d;

    .line 52
    invoke-virtual {v0}, Landroidx/appcompat/app/a0$d;->g()V

    .line 55
    iget-object p1, p0, Landroidx/appcompat/app/a0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 57
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lm/a;)V

    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a0;->animateToMode(Z)V

    .line 64
    return-object v0

    .line 65
    :cond_40
    const/4 p1, 0x0

    .line 66
    return-object p1

    .line 67
    :catchall_42
    move-exception p1

    .line 68
    iget-object v0, v0, Landroidx/appcompat/app/a0$d;->d:Landroidx/appcompat/view/menu/h;

    .line 70
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h;->startDispatchingItemsChanged()V

    .line 73
    throw p1
.end method

.method public final updateVisibility(Z)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->v:Z

    .line 3
    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->w:Z

    .line 5
    iget-boolean v2, p0, Landroidx/appcompat/app/a0;->x:Z

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_c

    .line 11
    :cond_a
    move v0, v4

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    if-nez v0, :cond_10

    .line 15
    if-eqz v1, :cond_a

    .line 17
    :cond_10
    move v0, v3

    .line 18
    :goto_11
    const/4 v1, 0x2

    .line 19
    const/high16 v2, 0x3f800000  # 1.0f

    .line 21
    const-wide/16 v5, 0xfa

    .line 23
    const/4 v7, 0x0

    .line 24
    if-eqz v0, :cond_e3

    .line 26
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->y:Z

    .line 28
    if-nez v0, :cond_182

    .line 30
    iput-boolean v4, p0, Landroidx/appcompat/app/a0;->y:Z

    .line 32
    iget-object v0, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    .line 34
    if-eqz v0, :cond_26

    .line 36
    invoke-virtual {v0}, Lm/g;->a()V

    .line 39
    :cond_26
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 41
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 44
    iget v0, p0, Landroidx/appcompat/app/a0;->t:I

    .line 46
    const/4 v3, 0x0

    .line 47
    if-nez v0, :cond_be

    .line 49
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->A:Z

    .line 51
    if-nez v0, :cond_36

    .line 53
    if-eqz p1, :cond_be

    .line 55
    :cond_36
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 57
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 60
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 65
    move-result v0

    .line 66
    neg-int v0, v0

    .line 67
    int-to-float v0, v0

    .line 68
    if-eqz p1, :cond_53

    .line 70
    new-array p1, v1, [I

    .line 72
    fill-array-data p1, :array_184

    .line 75
    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 77
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 80
    aget p1, p1, v4

    .line 82
    int-to-float p1, p1

    .line 83
    sub-float/2addr v0, p1

    .line 84
    :cond_53
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 89
    new-instance p1, Lm/g;

    .line 91
    invoke-direct {p1}, Lm/g;-><init>()V

    .line 94
    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 96
    invoke-static {v1}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1, v3}, Lm0/o0;->e(F)V

    .line 103
    iget-object v2, p0, Landroidx/appcompat/app/a0;->E:Landroidx/appcompat/app/a0$c;

    .line 105
    iget-object v4, v1, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 107
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Landroid/view/View;

    .line 113
    if-eqz v4, :cond_80

    .line 115
    if-eqz v2, :cond_79

    .line 117
    new-instance v7, Lm0/m0;

    .line 119
    invoke-direct {v7, v2, v4}, Lm0/m0;-><init>(Landroidx/appcompat/app/a0$c;Landroid/view/View;)V

    .line 122
    :cond_79
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 125
    move-result-object v2

    .line 126
    invoke-static {v2, v7}, Lm0/o0$a;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 129
    :cond_80
    iget-boolean v2, p1, Lm/g;->e:Z

    .line 131
    if-nez v2, :cond_89

    .line 133
    iget-object v2, p1, Lm/g;->a:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_89
    iget-boolean v1, p0, Landroidx/appcompat/app/a0;->u:Z

    .line 140
    if-eqz v1, :cond_a6

    .line 142
    iget-object v1, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    .line 144
    if-eqz v1, :cond_a6

    .line 146
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 149
    iget-object v0, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    .line 151
    invoke-static {v0}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, v3}, Lm0/o0;->e(F)V

    .line 158
    iget-boolean v1, p1, Lm/g;->e:Z

    .line 160
    if-nez v1, :cond_a6

    .line 162
    iget-object v1, p1, Lm/g;->a:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_a6
    sget-object v0, Landroidx/appcompat/app/a0;->G:Landroid/view/animation/DecelerateInterpolator;

    .line 169
    iget-boolean v1, p1, Lm/g;->e:Z

    .line 171
    if-nez v1, :cond_ae

    .line 173
    iput-object v0, p1, Lm/g;->c:Landroid/view/animation/Interpolator;

    .line 175
    :cond_ae
    if-nez v1, :cond_b2

    .line 177
    iput-wide v5, p1, Lm/g;->b:J

    .line 179
    :cond_b2
    iget-object v0, p0, Landroidx/appcompat/app/a0;->D:Landroidx/appcompat/app/a0$b;

    .line 181
    if-nez v1, :cond_b8

    .line 183
    iput-object v0, p1, Lm/g;->d:Lm0/p0;

    .line 185
    :cond_b8
    iput-object p1, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    .line 187
    invoke-virtual {p1}, Lm/g;->b()V

    .line 190
    goto :goto_d8

    .line 191
    :cond_be
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 193
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 196
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 198
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 201
    iget-boolean p1, p0, Landroidx/appcompat/app/a0;->u:Z

    .line 203
    if-eqz p1, :cond_d3

    .line 205
    iget-object p1, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    .line 207
    if-eqz p1, :cond_d3

    .line 209
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 212
    :cond_d3
    iget-object p1, p0, Landroidx/appcompat/app/a0;->D:Landroidx/appcompat/app/a0$b;

    .line 214
    invoke-virtual {p1}, Landroidx/appcompat/app/a0$b;->onAnimationEnd()V

    .line 217
    :goto_d8
    iget-object p1, p0, Landroidx/appcompat/app/a0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 219
    if-eqz p1, :cond_182

    .line 221
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 223
    invoke-static {p1}, Lm0/g0$h;->c(Landroid/view/View;)V

    .line 226
    goto/16 :goto_182

    .line 228
    :cond_e3
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->y:Z

    .line 230
    if-eqz v0, :cond_182

    .line 232
    iput-boolean v3, p0, Landroidx/appcompat/app/a0;->y:Z

    .line 234
    iget-object v0, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    .line 236
    if-eqz v0, :cond_f0

    .line 238
    invoke-virtual {v0}, Lm/g;->a()V

    .line 241
    :cond_f0
    iget v0, p0, Landroidx/appcompat/app/a0;->t:I

    .line 243
    if-nez v0, :cond_17d

    .line 245
    iget-boolean v0, p0, Landroidx/appcompat/app/a0;->A:Z

    .line 247
    if-nez v0, :cond_fa

    .line 249
    if-eqz p1, :cond_17d

    .line 251
    :cond_fa
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 253
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 256
    iget-object v0, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 258
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 261
    new-instance v0, Lm/g;

    .line 263
    invoke-direct {v0}, Lm/g;-><init>()V

    .line 266
    iget-object v2, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 268
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 271
    move-result v2

    .line 272
    neg-int v2, v2

    .line 273
    int-to-float v2, v2

    .line 274
    if-eqz p1, :cond_121

    .line 276
    new-array p1, v1, [I

    .line 278
    fill-array-data p1, :array_18c

    .line 281
    iget-object v1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 283
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 286
    aget p1, p1, v4

    .line 288
    int-to-float p1, p1

    .line 289
    sub-float/2addr v2, p1

    .line 290
    :cond_121
    iget-object p1, p0, Landroidx/appcompat/app/a0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 292
    invoke-static {p1}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 295
    move-result-object p1

    .line 296
    invoke-virtual {p1, v2}, Lm0/o0;->e(F)V

    .line 299
    iget-object v1, p0, Landroidx/appcompat/app/a0;->E:Landroidx/appcompat/app/a0$c;

    .line 301
    iget-object v3, p1, Lm0/o0;->a:Ljava/lang/ref/WeakReference;

    .line 303
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Landroid/view/View;

    .line 309
    if-eqz v3, :cond_144

    .line 311
    if-eqz v1, :cond_13d

    .line 313
    new-instance v7, Lm0/m0;

    .line 315
    invoke-direct {v7, v1, v3}, Lm0/m0;-><init>(Landroidx/appcompat/app/a0$c;Landroid/view/View;)V

    .line 318
    :cond_13d
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 321
    move-result-object v1

    .line 322
    invoke-static {v1, v7}, Lm0/o0$a;->a(Landroid/view/ViewPropertyAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 325
    :cond_144
    iget-boolean v1, v0, Lm/g;->e:Z

    .line 327
    if-nez v1, :cond_14d

    .line 329
    iget-object v1, v0, Lm/g;->a:Ljava/util/ArrayList;

    .line 331
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_14d
    iget-boolean p1, p0, Landroidx/appcompat/app/a0;->u:Z

    .line 336
    if-eqz p1, :cond_165

    .line 338
    iget-object p1, p0, Landroidx/appcompat/app/a0;->h:Landroid/view/View;

    .line 340
    if-eqz p1, :cond_165

    .line 342
    invoke-static {p1}, Lm0/g0;->a(Landroid/view/View;)Lm0/o0;

    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {p1, v2}, Lm0/o0;->e(F)V

    .line 349
    iget-boolean v1, v0, Lm/g;->e:Z

    .line 351
    if-nez v1, :cond_165

    .line 353
    iget-object v1, v0, Lm/g;->a:Ljava/util/ArrayList;

    .line 355
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_165
    sget-object p1, Landroidx/appcompat/app/a0;->F:Landroid/view/animation/AccelerateInterpolator;

    .line 360
    iget-boolean v1, v0, Lm/g;->e:Z

    .line 362
    if-nez v1, :cond_16d

    .line 364
    iput-object p1, v0, Lm/g;->c:Landroid/view/animation/Interpolator;

    .line 366
    :cond_16d
    if-nez v1, :cond_171

    .line 368
    iput-wide v5, v0, Lm/g;->b:J

    .line 370
    :cond_171
    iget-object p1, p0, Landroidx/appcompat/app/a0;->C:Landroidx/appcompat/app/a0$a;

    .line 372
    if-nez v1, :cond_177

    .line 374
    iput-object p1, v0, Lm/g;->d:Lm0/p0;

    .line 376
    :cond_177
    iput-object v0, p0, Landroidx/appcompat/app/a0;->z:Lm/g;

    .line 378
    invoke-virtual {v0}, Lm/g;->b()V

    .line 381
    goto :goto_182

    .line 382
    :cond_17d
    iget-object p1, p0, Landroidx/appcompat/app/a0;->C:Landroidx/appcompat/app/a0$a;

    .line 384
    invoke-virtual {p1}, Landroidx/appcompat/app/a0$a;->onAnimationEnd()V

    .line 387
    :cond_182
    :goto_182
    return-void

    .line 388
    nop

    .line 389
    :array_184
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 397
    :array_18c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
