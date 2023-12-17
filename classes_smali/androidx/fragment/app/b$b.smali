.class public final Landroidx/fragment/app/b$b;
.super Landroidx/fragment/app/b$c;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Z

.field public d:Z

.field public e:Landroidx/fragment/app/m$a;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b$c;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/fragment/app/b$b;->d:Z

    .line 7
    iput-boolean p3, p0, Landroidx/fragment/app/b$b;->c:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Landroidx/fragment/app/m$a;
    .registers 11

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/b$b;->d:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/b$b;->e:Landroidx/fragment/app/m$a;

    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 10
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 12
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 14
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-ne v0, v2, :cond_15

    .line 20
    move v0, v4

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v0, v3

    .line 23
    :goto_16
    iget-boolean v2, p0, Landroidx/fragment/app/b$b;->c:Z

    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    .line 28
    move-result v5

    .line 29
    if-eqz v2, :cond_2a

    .line 31
    if-eqz v0, :cond_25

    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    .line 36
    move-result v2

    .line 37
    goto :goto_35

    .line 38
    :cond_25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    .line 41
    move-result v2

    .line 42
    goto :goto_35

    .line 43
    :cond_2a
    if-eqz v0, :cond_31

    .line 45
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    .line 48
    move-result v2

    .line 49
    goto :goto_35

    .line 50
    :cond_31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    .line 53
    move-result v2

    .line 54
    :goto_35
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 57
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 59
    const/4 v7, 0x0

    .line 60
    if-eqz v6, :cond_4a

    .line 62
    sget v8, Lw0/b;->visible_removing_fragment_view_tag:I

    .line 64
    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 67
    move-result-object v6

    .line 68
    if-eqz v6, :cond_4a

    .line 70
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {v6, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    :cond_4a
    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 77
    if-eqz v6, :cond_56

    .line 79
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 82
    move-result-object v6

    .line 83
    if-eqz v6, :cond_56

    .line 85
    goto/16 :goto_108

    .line 87
    :cond_56
    invoke-virtual {v1, v5, v0, v2}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    .line 90
    move-result-object v6

    .line 91
    if-eqz v6, :cond_63

    .line 93
    new-instance v7, Landroidx/fragment/app/m$a;

    .line 95
    invoke-direct {v7, v6}, Landroidx/fragment/app/m$a;-><init>(Landroid/view/animation/Animation;)V

    .line 98
    goto/16 :goto_108

    .line 100
    :cond_63
    invoke-virtual {v1, v5, v0, v2}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_70

    .line 106
    new-instance v7, Landroidx/fragment/app/m$a;

    .line 108
    invoke-direct {v7, v1}, Landroidx/fragment/app/m$a;-><init>(Landroid/animation/Animator;)V

    .line 111
    goto/16 :goto_108

    .line 113
    :cond_70
    if-nez v2, :cond_c6

    .line 115
    if-eqz v5, :cond_c6

    .line 117
    const/16 v1, 0x1001

    .line 119
    if-eq v5, v1, :cond_be

    .line 121
    const/16 v1, 0x2002

    .line 123
    if-eq v5, v1, :cond_b6

    .line 125
    const/16 v1, 0x2005

    .line 127
    if-eq v5, v1, :cond_a4

    .line 129
    const/16 v1, 0x1003

    .line 131
    if-eq v5, v1, :cond_9c

    .line 133
    const/16 v1, 0x1004

    .line 135
    if-eq v5, v1, :cond_8a

    .line 137
    const/4 v0, -0x1

    .line 138
    goto :goto_c5

    .line 139
    :cond_8a
    if-eqz v0, :cond_94

    .line 141
    const v0, 0x10100b8

    .line 144
    invoke-static {p1, v0}, Landroidx/fragment/app/m;->a(Landroid/content/Context;I)I

    .line 147
    move-result v0

    .line 148
    goto :goto_c5

    .line 149
    :cond_94
    const v0, 0x10100b9

    .line 152
    invoke-static {p1, v0}, Landroidx/fragment/app/m;->a(Landroid/content/Context;I)I

    .line 155
    move-result v0

    .line 156
    goto :goto_c5

    .line 157
    :cond_9c
    if-eqz v0, :cond_a1

    .line 159
    sget v0, Lw0/a;->fragment_fade_enter:I

    .line 161
    goto :goto_c5

    .line 162
    :cond_a1
    sget v0, Lw0/a;->fragment_fade_exit:I

    .line 164
    goto :goto_c5

    .line 165
    :cond_a4
    if-eqz v0, :cond_ae

    .line 167
    const v0, 0x10100ba

    .line 170
    invoke-static {p1, v0}, Landroidx/fragment/app/m;->a(Landroid/content/Context;I)I

    .line 173
    move-result v0

    .line 174
    goto :goto_c5

    .line 175
    :cond_ae
    const v0, 0x10100bb

    .line 178
    invoke-static {p1, v0}, Landroidx/fragment/app/m;->a(Landroid/content/Context;I)I

    .line 181
    move-result v0

    .line 182
    goto :goto_c5

    .line 183
    :cond_b6
    if-eqz v0, :cond_bb

    .line 185
    sget v0, Lw0/a;->fragment_close_enter:I

    .line 187
    goto :goto_c5

    .line 188
    :cond_bb
    sget v0, Lw0/a;->fragment_close_exit:I

    .line 190
    goto :goto_c5

    .line 191
    :cond_be
    if-eqz v0, :cond_c3

    .line 193
    sget v0, Lw0/a;->fragment_open_enter:I

    .line 195
    goto :goto_c5

    .line 196
    :cond_c3
    sget v0, Lw0/a;->fragment_open_exit:I

    .line 198
    :goto_c5
    move v2, v0

    .line 199
    :cond_c6
    if-eqz v2, :cond_108

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    const-string v1, "anim"

    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_e9

    .line 217
    :try_start_d8
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_e5

    .line 223
    new-instance v5, Landroidx/fragment/app/m$a;

    .line 225
    invoke-direct {v5, v1}, Landroidx/fragment/app/m$a;-><init>(Landroid/view/animation/Animation;)V
    :try_end_e3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d8 .. :try_end_e3} :catch_e7
    .catch Ljava/lang/RuntimeException; {:try_start_d8 .. :try_end_e3} :catch_e9

    .line 228
    move-object v7, v5

    .line 229
    goto :goto_108

    .line 230
    :cond_e5
    move v3, v4

    .line 231
    goto :goto_e9

    .line 232
    :catch_e7
    move-exception p1

    .line 233
    throw p1

    .line 234
    :catch_e9
    :cond_e9
    :goto_e9
    if-nez v3, :cond_108

    .line 236
    :try_start_eb
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 239
    move-result-object v1

    .line 240
    if-eqz v1, :cond_108

    .line 242
    new-instance v3, Landroidx/fragment/app/m$a;

    .line 244
    invoke-direct {v3, v1}, Landroidx/fragment/app/m$a;-><init>(Landroid/animation/Animator;)V
    :try_end_f6
    .catch Ljava/lang/RuntimeException; {:try_start_eb .. :try_end_f6} :catch_f8

    .line 247
    move-object v7, v3

    .line 248
    goto :goto_108

    .line 249
    :catch_f8
    move-exception v1

    .line 250
    if-nez v0, :cond_107

    .line 252
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 255
    move-result-object p1

    .line 256
    if-eqz p1, :cond_108

    .line 258
    new-instance v7, Landroidx/fragment/app/m$a;

    .line 260
    invoke-direct {v7, p1}, Landroidx/fragment/app/m$a;-><init>(Landroid/view/animation/Animation;)V

    .line 263
    goto :goto_108

    .line 264
    :cond_107
    throw v1

    .line 265
    :cond_108
    :goto_108
    iput-object v7, p0, Landroidx/fragment/app/b$b;->e:Landroidx/fragment/app/m$a;

    .line 267
    iput-boolean v4, p0, Landroidx/fragment/app/b$b;->d:Z

    .line 269
    return-object v7
.end method
