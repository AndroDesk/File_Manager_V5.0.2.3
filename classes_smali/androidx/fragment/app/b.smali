.class public final Landroidx/fragment/app/b;
.super Landroidx/fragment/app/SpecialEffectsController;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/b$d;,
        Landroidx/fragment/app/b$b;,
        Landroidx/fragment/app/b$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    return-void
.end method

.method public static j(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 6

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 3
    if-eqz v0, :cond_2e

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    invoke-static {v0}, Lm0/k0;->b(Landroid/view/ViewGroup;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_17

    .line 14
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_37

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    goto :goto_37

    .line 24
    :cond_17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    move-result p0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_1c
    if-ge v1, p0, :cond_37

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2b

    .line 41
    invoke-static {v2, p1}, Landroidx/fragment/app/b;->j(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 44
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_1c

    .line 47
    :cond_2e
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_37

    .line 53
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_37
    :goto_37
    return-void
.end method

.method public static k(Landroidx/collection/a;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_b
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 14
    if-eqz v0, :cond_28

    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_16
    if-ge v1, v0, :cond_28

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_25

    .line 35
    invoke-static {p0, v2}, Landroidx/fragment/app/b;->k(Landroidx/collection/a;Landroid/view/View;)V

    .line 38
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_16

    .line 41
    :cond_28
    return-void
.end method

.method public static l(Landroidx/collection/a;Ljava/util/Collection;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/collection/a;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2a

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 27
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 29
    invoke-static {v0}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_8

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 42
    goto :goto_8

    .line 43
    :cond_2a
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;Z)V
    .registers 37

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v6

    .line 17
    const/4 v7, 0x4

    .line 18
    const/4 v8, 0x2

    .line 19
    const/4 v9, 0x1

    .line 20
    if-eqz v6, :cond_45

    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v6

    .line 26
    check-cast v6, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 28
    iget-object v10, v6, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 30
    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 32
    invoke-static {v10}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 35
    move-result-object v10

    .line 36
    sget-object v11, Landroidx/fragment/app/b$a;->a:[I

    .line 38
    iget-object v12, v6, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 40
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 43
    move-result v12

    .line 44
    aget v11, v11, v12

    .line 46
    if-eq v11, v9, :cond_3d

    .line 48
    if-eq v11, v8, :cond_3d

    .line 50
    const/4 v8, 0x3

    .line 51
    if-eq v11, v8, :cond_3d

    .line 53
    if-eq v11, v7, :cond_37

    .line 55
    goto :goto_c

    .line 56
    :cond_37
    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 58
    if-eq v10, v7, :cond_c

    .line 60
    move-object v5, v6

    .line 61
    goto :goto_c

    .line 62
    :cond_3d
    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 64
    if-ne v10, v7, :cond_c

    .line 66
    if-nez v4, :cond_c

    .line 68
    move-object v4, v6

    .line 69
    goto :goto_c

    .line 70
    :cond_45
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 73
    move-result v3

    .line 74
    const-string v6, " to "

    .line 76
    const-string v7, "FragmentManager"

    .line 78
    if-eqz v3, :cond_69

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string v8, "Executing operations from "

    .line 87
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_69
    new-instance v3, Ljava/util/ArrayList;

    .line 108
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v8, Ljava/util/ArrayList;

    .line 113
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v9, Ljava/util/ArrayList;

    .line 118
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 124
    move-result v10

    .line 125
    add-int/lit8 v10, v10, -0x1

    .line 127
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v10

    .line 131
    check-cast v10, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 133
    iget-object v10, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    move-result-object v11

    .line 139
    :goto_8a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v12

    .line 143
    if-eqz v12, :cond_ad

    .line 145
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v12

    .line 149
    check-cast v12, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 151
    iget-object v12, v12, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 153
    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 155
    iget-object v13, v10, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    .line 157
    iget v14, v13, Landroidx/fragment/app/Fragment$j;->b:I

    .line 159
    iput v14, v12, Landroidx/fragment/app/Fragment$j;->b:I

    .line 161
    iget v14, v13, Landroidx/fragment/app/Fragment$j;->c:I

    .line 163
    iput v14, v12, Landroidx/fragment/app/Fragment$j;->c:I

    .line 165
    iget v14, v13, Landroidx/fragment/app/Fragment$j;->d:I

    .line 167
    iput v14, v12, Landroidx/fragment/app/Fragment$j;->d:I

    .line 169
    iget v13, v13, Landroidx/fragment/app/Fragment$j;->e:I

    .line 171
    iput v13, v12, Landroidx/fragment/app/Fragment$j;->e:I

    .line 173
    goto :goto_8a

    .line 174
    :cond_ad
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object v1

    .line 178
    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v10

    .line 182
    if-eqz v10, :cond_fc

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v10

    .line 188
    check-cast v10, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 190
    new-instance v11, Li0/d;

    .line 192
    invoke-direct {v11}, Li0/d;-><init>()V

    .line 195
    invoke-virtual {v10}, Landroidx/fragment/app/SpecialEffectsController$Operation;->d()V

    .line 198
    iget-object v12, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/HashSet;

    .line 200
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v12, Landroidx/fragment/app/b$b;

    .line 205
    invoke-direct {v12, v10, v11, v2}, Landroidx/fragment/app/b$b;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;Z)V

    .line 208
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v11, Li0/d;

    .line 213
    invoke-direct {v11}, Li0/d;-><init>()V

    .line 216
    invoke-virtual {v10}, Landroidx/fragment/app/SpecialEffectsController$Operation;->d()V

    .line 219
    iget-object v12, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/HashSet;

    .line 221
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v12, Landroidx/fragment/app/b$d;

    .line 226
    if-eqz v2, :cond_e6

    .line 228
    if-ne v10, v4, :cond_ea

    .line 230
    goto :goto_e8

    .line 231
    :cond_e6
    if-ne v10, v5, :cond_ea

    .line 233
    :goto_e8
    const/4 v13, 0x1

    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    const/4 v13, 0x0

    .line 236
    :goto_eb
    invoke-direct {v12, v10, v11, v2, v13}, Landroidx/fragment/app/b$d;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;ZZ)V

    .line 239
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v11, Landroidx/fragment/app/c;

    .line 244
    invoke-direct {v11, v0, v9, v10}, Landroidx/fragment/app/c;-><init>(Landroidx/fragment/app/b;Ljava/util/ArrayList;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 247
    iget-object v10, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->d:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    goto :goto_b1

    .line 253
    :cond_fc
    new-instance v1, Ljava/util/HashMap;

    .line 255
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 258
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 261
    move-result-object v10

    .line 262
    const/4 v11, 0x0

    .line 263
    :cond_106
    :goto_106
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    move-result v12

    .line 267
    if-eqz v12, :cond_186

    .line 269
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    move-result-object v12

    .line 273
    check-cast v12, Landroidx/fragment/app/b$d;

    .line 275
    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->b()Z

    .line 278
    move-result v13

    .line 279
    if-eqz v13, :cond_119

    .line 281
    goto :goto_106

    .line 282
    :cond_119
    iget-object v13, v12, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    .line 284
    invoke-virtual {v12, v13}, Landroidx/fragment/app/b$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/i0;

    .line 287
    move-result-object v13

    .line 288
    iget-object v14, v12, Landroidx/fragment/app/b$d;->e:Ljava/lang/Object;

    .line 290
    invoke-virtual {v12, v14}, Landroidx/fragment/app/b$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/i0;

    .line 293
    move-result-object v14

    .line 294
    const-string v15, " returned Transition "

    .line 296
    const-string v16, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 298
    if-eqz v13, :cond_157

    .line 300
    if-eqz v14, :cond_157

    .line 302
    if-ne v13, v14, :cond_130

    .line 304
    goto :goto_157

    .line 305
    :cond_130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 307
    invoke-static/range {v16 .. v16}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    move-result-object v2

    .line 311
    iget-object v3, v12, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 313
    iget-object v3, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-object v3, v12, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    const-string v3, " which uses a different Transition  type than its shared element transition "

    .line 328
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v3, v12, Landroidx/fragment/app/b$d;->e:Ljava/lang/Object;

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object v2

    .line 340
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 343
    throw v1

    .line 344
    :cond_157
    :goto_157
    if-eqz v13, :cond_15a

    .line 346
    goto :goto_15b

    .line 347
    :cond_15a
    move-object v13, v14

    .line 348
    :goto_15b
    if-nez v11, :cond_15f

    .line 350
    move-object v11, v13

    .line 351
    goto :goto_106

    .line 352
    :cond_15f
    if-eqz v13, :cond_106

    .line 354
    if-ne v11, v13, :cond_164

    .line 356
    goto :goto_106

    .line 357
    :cond_164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 359
    invoke-static/range {v16 .. v16}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    move-result-object v2

    .line 363
    iget-object v3, v12, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 365
    iget-object v3, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v3, v12, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    const-string v3, " which uses a different Transition  type than other Fragments."

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    move-result-object v2

    .line 387
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 390
    throw v1

    .line 391
    :cond_186
    if-nez v11, :cond_1ab

    .line 393
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 396
    move-result-object v2

    .line 397
    :goto_18c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    move-result v8

    .line 401
    if-eqz v8, :cond_1a3

    .line 403
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    move-result-object v8

    .line 407
    check-cast v8, Landroidx/fragment/app/b$d;

    .line 409
    iget-object v10, v8, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 411
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 413
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-virtual {v8}, Landroidx/fragment/app/b$c;->a()V

    .line 419
    goto :goto_18c

    .line 420
    :cond_1a3
    move-object v13, v1

    .line 421
    move-object/from16 v23, v3

    .line 423
    move-object/from16 v22, v6

    .line 425
    move-object v15, v7

    .line 426
    goto/16 :goto_5ce

    .line 428
    :cond_1ab
    new-instance v10, Landroid/view/View;

    .line 430
    iget-object v12, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 432
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 435
    move-result-object v12

    .line 436
    invoke-direct {v10, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 439
    new-instance v15, Landroid/graphics/Rect;

    .line 441
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 444
    new-instance v14, Ljava/util/ArrayList;

    .line 446
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 449
    new-instance v13, Ljava/util/ArrayList;

    .line 451
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 454
    new-instance v12, Landroidx/collection/a;

    .line 456
    invoke-direct {v12}, Landroidx/collection/a;-><init>()V

    .line 459
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 462
    move-result-object v18

    .line 463
    const/16 v16, 0x0

    .line 465
    const/16 v17, 0x0

    .line 467
    const/16 v19, 0x0

    .line 469
    move-object/from16 v23, v3

    .line 471
    move-object v3, v4

    .line 472
    move-object/from16 v22, v6

    .line 474
    move-object/from16 v24, v9

    .line 476
    move-object/from16 v6, v16

    .line 478
    move-object/from16 v20, v17

    .line 480
    move-object v9, v5

    .line 481
    :goto_1e0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    move-result v16

    .line 485
    if-eqz v16, :cond_40e

    .line 487
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    move-result-object v16

    .line 491
    move-object/from16 p1, v6

    .line 493
    move-object/from16 v6, v16

    .line 495
    check-cast v6, Landroidx/fragment/app/b$d;

    .line 497
    iget-object v6, v6, Landroidx/fragment/app/b$d;->e:Ljava/lang/Object;

    .line 499
    if-eqz v6, :cond_1f7

    .line 501
    const/16 v16, 0x1

    .line 503
    goto :goto_1f9

    .line 504
    :cond_1f7
    const/16 v16, 0x0

    .line 506
    :goto_1f9
    if-eqz v16, :cond_3ea

    .line 508
    if-eqz v3, :cond_3ea

    .line 510
    if-eqz v9, :cond_3ea

    .line 512
    invoke-virtual {v11, v6}, Landroidx/fragment/app/i0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    move-result-object v6

    .line 516
    invoke-virtual {v11, v6}, Landroidx/fragment/app/i0;->r(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    move-result-object v6

    .line 520
    move-object/from16 v21, v8

    .line 522
    iget-object v8, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 524
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 527
    move-result-object v8

    .line 528
    move-object/from16 v25, v1

    .line 530
    iget-object v1, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 532
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 535
    move-result-object v1

    .line 536
    move-object/from16 v26, v10

    .line 538
    iget-object v10, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 540
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 543
    move-result-object v10

    .line 544
    const/16 v16, 0x0

    .line 546
    move-object/from16 p1, v6

    .line 548
    move-object/from16 v17, v15

    .line 550
    move/from16 v15, v16

    .line 552
    :goto_227
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 555
    move-result v6

    .line 556
    if-ge v15, v6, :cond_248

    .line 558
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 561
    move-result-object v6

    .line 562
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 565
    move-result v6

    .line 566
    move-object/from16 v16, v10

    .line 568
    const/4 v10, -0x1

    .line 569
    if-eq v6, v10, :cond_243

    .line 571
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 574
    move-result-object v10

    .line 575
    check-cast v10, Ljava/lang/String;

    .line 577
    invoke-virtual {v8, v6, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_243
    add-int/lit8 v15, v15, 0x1

    .line 582
    move-object/from16 v10, v16

    .line 584
    goto :goto_227

    .line 585
    :cond_248
    iget-object v1, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 587
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 590
    move-result-object v1

    .line 591
    if-nez v2, :cond_25b

    .line 593
    iget-object v6, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 595
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ld0/o;

    .line 598
    iget-object v6, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 600
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    .line 603
    goto :goto_265

    .line 604
    :cond_25b
    iget-object v6, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 606
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    .line 609
    iget-object v6, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 611
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ld0/o;

    .line 614
    :goto_265
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 617
    move-result v6

    .line 618
    const/4 v10, 0x0

    .line 619
    :goto_26a
    if-ge v10, v6, :cond_284

    .line 621
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 624
    move-result-object v15

    .line 625
    check-cast v15, Ljava/lang/String;

    .line 627
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 630
    move-result-object v16

    .line 631
    move/from16 v27, v6

    .line 633
    move-object/from16 v6, v16

    .line 635
    check-cast v6, Ljava/lang/String;

    .line 637
    invoke-virtual {v12, v15, v6}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    add-int/lit8 v10, v10, 0x1

    .line 642
    move/from16 v6, v27

    .line 644
    goto :goto_26a

    .line 645
    :cond_284
    const/4 v6, 0x2

    .line 646
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 649
    move-result v6

    .line 650
    if-eqz v6, :cond_2e5

    .line 652
    const-string v6, ">>> entering view names <<<"

    .line 654
    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 660
    move-result-object v6

    .line 661
    :goto_294
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 664
    move-result v10

    .line 665
    const-string v15, "Name: "

    .line 667
    if-eqz v10, :cond_2b9

    .line 669
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 672
    move-result-object v10

    .line 673
    check-cast v10, Ljava/lang/String;

    .line 675
    move-object/from16 v16, v6

    .line 677
    new-instance v6, Ljava/lang/StringBuilder;

    .line 679
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    move-result-object v6

    .line 692
    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v6, v16

    .line 697
    goto :goto_294

    .line 698
    :cond_2b9
    const-string v6, ">>> exiting view names <<<"

    .line 700
    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 706
    move-result-object v6

    .line 707
    :goto_2c2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 710
    move-result v10

    .line 711
    if-eqz v10, :cond_2e5

    .line 713
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 716
    move-result-object v10

    .line 717
    check-cast v10, Ljava/lang/String;

    .line 719
    move-object/from16 v16, v6

    .line 721
    new-instance v6, Ljava/lang/StringBuilder;

    .line 723
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    move-result-object v6

    .line 736
    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    move-object/from16 v6, v16

    .line 741
    goto :goto_2c2

    .line 742
    :cond_2e5
    new-instance v6, Landroidx/collection/a;

    .line 744
    invoke-direct {v6}, Landroidx/collection/a;-><init>()V

    .line 747
    iget-object v10, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 749
    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 751
    invoke-static {v6, v10}, Landroidx/fragment/app/b;->k(Landroidx/collection/a;Landroid/view/View;)V

    .line 754
    invoke-virtual {v6, v8}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    .line 757
    invoke-virtual {v6}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    .line 760
    move-result-object v10

    .line 761
    invoke-virtual {v12, v10}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    .line 764
    new-instance v10, Landroidx/collection/a;

    .line 766
    invoke-direct {v10}, Landroidx/collection/a;-><init>()V

    .line 769
    iget-object v15, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 771
    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 773
    invoke-static {v10, v15}, Landroidx/fragment/app/b;->k(Landroidx/collection/a;Landroid/view/View;)V

    .line 776
    invoke-virtual {v10, v1}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    .line 779
    invoke-virtual {v12}, Landroidx/collection/a;->values()Ljava/util/Collection;

    .line 782
    move-result-object v15

    .line 783
    invoke-virtual {v10, v15}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    .line 786
    sget-object v15, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/e0;

    .line 788
    invoke-virtual {v12}, Landroidx/collection/f;->size()I

    .line 791
    move-result v15

    .line 792
    add-int/lit8 v15, v15, -0x1

    .line 794
    :goto_319
    if-ltz v15, :cond_333

    .line 796
    invoke-virtual {v12, v15}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 799
    move-result-object v16

    .line 800
    move-object/from16 v27, v7

    .line 802
    move-object/from16 v7, v16

    .line 804
    check-cast v7, Ljava/lang/String;

    .line 806
    invoke-virtual {v10, v7}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 809
    move-result v7

    .line 810
    if-nez v7, :cond_32e

    .line 812
    invoke-virtual {v12, v15}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 815
    :cond_32e
    add-int/lit8 v15, v15, -0x1

    .line 817
    move-object/from16 v7, v27

    .line 819
    goto :goto_319

    .line 820
    :cond_333
    move-object/from16 v27, v7

    .line 822
    invoke-virtual {v12}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    .line 825
    move-result-object v7

    .line 826
    invoke-static {v6, v7}, Landroidx/fragment/app/b;->l(Landroidx/collection/a;Ljava/util/Collection;)V

    .line 829
    invoke-virtual {v12}, Landroidx/collection/a;->values()Ljava/util/Collection;

    .line 832
    move-result-object v7

    .line 833
    invoke-static {v10, v7}, Landroidx/fragment/app/b;->l(Landroidx/collection/a;Ljava/util/Collection;)V

    .line 836
    invoke-virtual {v12}, Landroidx/collection/f;->isEmpty()Z

    .line 839
    move-result v7

    .line 840
    if-eqz v7, :cond_35c

    .line 842
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 845
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 848
    const/4 v1, 0x0

    .line 849
    move-object v6, v12

    .line 850
    move-object v10, v13

    .line 851
    move-object v7, v14

    .line 852
    move-object/from16 v8, v17

    .line 854
    move-object/from16 v15, v25

    .line 856
    move-object v12, v1

    .line 857
    move-object/from16 v1, v26

    .line 859
    goto/16 :goto_3fe

    .line 861
    :cond_35c
    iget-object v7, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 863
    iget-object v3, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 865
    if-eqz v2, :cond_366

    .line 867
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    .line 870
    goto :goto_369

    .line 871
    :cond_366
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    .line 874
    :goto_369
    iget-object v3, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 876
    new-instance v7, Landroidx/fragment/app/h;

    .line 878
    invoke-direct {v7, v5, v4, v2, v10}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/a;)V

    .line 881
    invoke-static {v3, v7}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 884
    invoke-virtual {v6}, Landroidx/collection/a;->values()Ljava/util/Collection;

    .line 887
    move-result-object v3

    .line 888
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 891
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 894
    move-result v3

    .line 895
    if-nez v3, :cond_395

    .line 897
    const/4 v3, 0x0

    .line 898
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 901
    move-result-object v7

    .line 902
    check-cast v7, Ljava/lang/String;

    .line 904
    invoke-virtual {v6, v7}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    move-result-object v6

    .line 908
    check-cast v6, Landroid/view/View;

    .line 910
    move-object/from16 v7, p1

    .line 912
    invoke-virtual {v11, v6, v7}, Landroidx/fragment/app/i0;->m(Landroid/view/View;Ljava/lang/Object;)V

    .line 915
    move-object/from16 v20, v6

    .line 917
    goto :goto_398

    .line 918
    :cond_395
    move-object/from16 v7, p1

    .line 920
    const/4 v3, 0x0

    .line 921
    :goto_398
    invoke-virtual {v10}, Landroidx/collection/a;->values()Ljava/util/Collection;

    .line 924
    move-result-object v6

    .line 925
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 928
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 931
    move-result v6

    .line 932
    if-nez v6, :cond_3c3

    .line 934
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 937
    move-result-object v1

    .line 938
    check-cast v1, Ljava/lang/String;

    .line 940
    invoke-virtual {v10, v1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    move-result-object v1

    .line 944
    check-cast v1, Landroid/view/View;

    .line 946
    if-eqz v1, :cond_3c3

    .line 948
    iget-object v3, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 950
    new-instance v6, Landroidx/fragment/app/i;

    .line 952
    move-object/from16 v8, v17

    .line 954
    invoke-direct {v6, v11, v1, v8}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/i0;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 957
    invoke-static {v3, v6}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 960
    const/4 v1, 0x1

    .line 961
    move/from16 v19, v1

    .line 963
    goto :goto_3c5

    .line 964
    :cond_3c3
    move-object/from16 v8, v17

    .line 966
    :goto_3c5
    move-object/from16 v1, v26

    .line 968
    invoke-virtual {v11, v7, v1, v14}, Landroidx/fragment/app/i0;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 971
    const/4 v3, 0x0

    .line 972
    const/4 v15, 0x0

    .line 973
    move-object v6, v12

    .line 974
    move-object v12, v11

    .line 975
    move-object v10, v13

    .line 976
    move-object v13, v7

    .line 977
    move-object v9, v14

    .line 978
    move-object v14, v3

    .line 979
    move-object/from16 v16, v7

    .line 981
    move-object/from16 v17, v10

    .line 983
    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/i0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 986
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 988
    move-object/from16 v15, v25

    .line 990
    invoke-virtual {v15, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    invoke-virtual {v15, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    move-object v13, v5

    .line 997
    move-object v12, v7

    .line 998
    move-object v7, v9

    .line 999
    move-object/from16 v3, v20

    .line 1001
    move-object v9, v4

    .line 1002
    goto :goto_3fa

    .line 1003
    :cond_3ea
    move-object/from16 v27, v7

    .line 1005
    move-object/from16 v21, v8

    .line 1007
    move-object v6, v12

    .line 1008
    move-object v7, v14

    .line 1009
    move-object v8, v15

    .line 1010
    move-object v15, v1

    .line 1011
    move-object v1, v10

    .line 1012
    move-object v10, v13

    .line 1013
    move-object/from16 v12, p1

    .line 1015
    move-object v13, v9

    .line 1016
    move-object v9, v3

    .line 1017
    move-object/from16 v3, v20

    .line 1019
    :goto_3fa
    move-object/from16 v20, v3

    .line 1021
    move-object v3, v9

    .line 1022
    move-object v9, v13

    .line 1023
    :goto_3fe
    move-object v14, v7

    .line 1024
    move-object v13, v10

    .line 1025
    move-object/from16 v7, v27

    .line 1027
    move-object v10, v1

    .line 1028
    move-object v1, v15

    .line 1029
    move-object v15, v8

    .line 1030
    move-object/from16 v8, v21

    .line 1032
    move-object/from16 v33, v12

    .line 1034
    move-object v12, v6

    .line 1035
    move-object/from16 v6, v33

    .line 1037
    goto/16 :goto_1e0

    .line 1039
    :cond_40e
    move-object/from16 p1, v6

    .line 1041
    move-object/from16 v27, v7

    .line 1043
    move-object/from16 v21, v8

    .line 1045
    move-object v6, v12

    .line 1046
    move-object v7, v14

    .line 1047
    move-object v8, v15

    .line 1048
    move-object v15, v1

    .line 1049
    move-object v1, v10

    .line 1050
    move-object v10, v13

    .line 1051
    new-instance v2, Ljava/util/ArrayList;

    .line 1053
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1059
    move-result-object v18

    .line 1060
    const/4 v12, 0x0

    .line 1061
    const/4 v13, 0x0

    .line 1062
    move-object v14, v12

    .line 1063
    :goto_426
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 1066
    move-result v12

    .line 1067
    if-eqz v12, :cond_534

    .line 1069
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1072
    move-result-object v12

    .line 1073
    check-cast v12, Landroidx/fragment/app/b$d;

    .line 1075
    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->b()Z

    .line 1078
    move-result v16

    .line 1079
    if-eqz v16, :cond_44b

    .line 1081
    move-object/from16 p2, v13

    .line 1083
    iget-object v13, v12, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1085
    move-object/from16 v16, v14

    .line 1087
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1089
    invoke-virtual {v15, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->a()V

    .line 1095
    move-object/from16 v13, p2

    .line 1097
    move-object/from16 v14, v16

    .line 1099
    goto :goto_426

    .line 1100
    :cond_44b
    move-object/from16 p2, v13

    .line 1102
    move-object/from16 v16, v14

    .line 1104
    iget-object v13, v12, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    .line 1106
    invoke-virtual {v11, v13}, Landroidx/fragment/app/i0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    move-result-object v14

    .line 1110
    iget-object v13, v12, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1112
    if-eqz p1, :cond_45f

    .line 1114
    if-eq v13, v3, :cond_45d

    .line 1116
    if-ne v13, v9, :cond_45f

    .line 1118
    :cond_45d
    const/4 v9, 0x1

    .line 1119
    goto :goto_460

    .line 1120
    :cond_45f
    const/4 v9, 0x0

    .line 1121
    :goto_460
    if-nez v14, :cond_479

    .line 1123
    if-nez v9, :cond_46c

    .line 1125
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1127
    invoke-virtual {v15, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->a()V

    .line 1133
    :cond_46c
    move-object/from16 v3, p2

    .line 1135
    move-object/from16 v25, v6

    .line 1137
    move-object v13, v15

    .line 1138
    move-object/from16 v14, v16

    .line 1140
    move-object/from16 v6, v20

    .line 1142
    move-object/from16 v9, v24

    .line 1144
    goto/16 :goto_528

    .line 1146
    :cond_479
    move-object/from16 v25, v6

    .line 1148
    new-instance v6, Ljava/util/ArrayList;

    .line 1150
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    move-object/from16 v17, v12

    .line 1155
    iget-object v12, v13, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 1157
    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1159
    invoke-static {v12, v6}, Landroidx/fragment/app/b;->j(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1162
    if-eqz v9, :cond_494

    .line 1164
    if-ne v13, v3, :cond_491

    .line 1166
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1169
    goto :goto_494

    .line 1170
    :cond_491
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1173
    :cond_494
    :goto_494
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1176
    move-result v3

    .line 1177
    if-eqz v3, :cond_4a7

    .line 1179
    invoke-virtual {v11, v1, v14}, Landroidx/fragment/app/i0;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 1182
    move-object/from16 v29, p2

    .line 1184
    move-object v3, v13

    .line 1185
    move-object/from16 v32, v15

    .line 1187
    move-object/from16 v31, v16

    .line 1189
    move-object/from16 v28, v17

    .line 1191
    goto :goto_4f1

    .line 1192
    :cond_4a7
    invoke-virtual {v11, v6, v14}, Landroidx/fragment/app/i0;->b(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 1195
    const/4 v3, 0x0

    .line 1196
    const/4 v9, 0x0

    .line 1197
    move-object/from16 v28, v17

    .line 1199
    move-object v12, v11

    .line 1200
    move-object/from16 v29, p2

    .line 1202
    move-object/from16 v30, v13

    .line 1204
    move-object v13, v14

    .line 1205
    move-object/from16 p2, v14

    .line 1207
    move-object/from16 v31, v16

    .line 1209
    move-object/from16 v32, v15

    .line 1211
    move-object v15, v6

    .line 1212
    move-object/from16 v16, v3

    .line 1214
    move-object/from16 v17, v9

    .line 1216
    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/i0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1219
    move-object/from16 v3, v30

    .line 1221
    iget-object v9, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1223
    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1225
    if-ne v9, v12, :cond_4ef

    .line 1227
    move-object/from16 v9, v24

    .line 1229
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1232
    new-instance v12, Ljava/util/ArrayList;

    .line 1234
    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1237
    iget-object v13, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 1239
    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1241
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1244
    iget-object v13, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 1246
    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1248
    move-object/from16 v14, p2

    .line 1250
    invoke-virtual {v11, v14, v13, v12}, Landroidx/fragment/app/i0;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1253
    iget-object v12, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 1255
    new-instance v13, Landroidx/fragment/app/j;

    .line 1257
    invoke-direct {v13, v6}, Landroidx/fragment/app/j;-><init>(Ljava/util/ArrayList;)V

    .line 1260
    invoke-static {v12, v13}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 1263
    goto :goto_4f3

    .line 1264
    :cond_4ef
    move-object/from16 v14, p2

    .line 1266
    :goto_4f1
    move-object/from16 v9, v24

    .line 1268
    :goto_4f3
    iget-object v12, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1270
    sget-object v13, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1272
    if-ne v12, v13, :cond_504

    .line 1274
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1277
    if-eqz v19, :cond_501

    .line 1279
    invoke-virtual {v11, v14, v8}, Landroidx/fragment/app/i0;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1282
    :cond_501
    move-object/from16 v6, v20

    .line 1284
    goto :goto_509

    .line 1285
    :cond_504
    move-object/from16 v6, v20

    .line 1287
    invoke-virtual {v11, v6, v14}, Landroidx/fragment/app/i0;->m(Landroid/view/View;Ljava/lang/Object;)V

    .line 1290
    :goto_509
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1292
    move-object/from16 v13, v32

    .line 1294
    invoke-virtual {v13, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    move-object/from16 v12, v28

    .line 1299
    iget-boolean v3, v12, Landroidx/fragment/app/b$d;->d:Z

    .line 1301
    if-eqz v3, :cond_51f

    .line 1303
    move-object/from16 v3, v29

    .line 1305
    invoke-virtual {v11, v3, v14}, Landroidx/fragment/app/i0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    move-result-object v3

    .line 1309
    move-object/from16 v14, v31

    .line 1311
    goto :goto_528

    .line 1312
    :cond_51f
    move-object/from16 v3, v29

    .line 1314
    move-object/from16 v12, v31

    .line 1316
    invoke-virtual {v11, v12, v14}, Landroidx/fragment/app/i0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    move-result-object v12

    .line 1320
    move-object v14, v12

    .line 1321
    :goto_528
    move-object/from16 v20, v6

    .line 1323
    move-object/from16 v24, v9

    .line 1325
    move-object v15, v13

    .line 1326
    move-object/from16 v6, v25

    .line 1328
    move-object v13, v3

    .line 1329
    move-object v3, v4

    .line 1330
    move-object v9, v5

    .line 1331
    goto/16 :goto_426

    .line 1333
    :cond_534
    move-object/from16 v25, v6

    .line 1335
    move-object v3, v13

    .line 1336
    move-object v12, v14

    .line 1337
    move-object v13, v15

    .line 1338
    move-object/from16 v9, v24

    .line 1340
    move-object/from16 v14, p1

    .line 1342
    invoke-virtual {v11, v3, v12, v14}, Landroidx/fragment/app/i0;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    move-result-object v1

    .line 1346
    if-nez v1, :cond_547

    .line 1348
    move-object/from16 v15, v27

    .line 1350
    goto/16 :goto_5ce

    .line 1352
    :cond_547
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1355
    move-result-object v3

    .line 1356
    :goto_54b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1359
    move-result v6

    .line 1360
    if-eqz v6, :cond_5c2

    .line 1362
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1365
    move-result-object v6

    .line 1366
    check-cast v6, Landroidx/fragment/app/b$d;

    .line 1368
    invoke-virtual {v6}, Landroidx/fragment/app/b$c;->b()Z

    .line 1371
    move-result v8

    .line 1372
    if-eqz v8, :cond_55e

    .line 1374
    goto :goto_54b

    .line 1375
    :cond_55e
    iget-object v8, v6, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    .line 1377
    iget-object v12, v6, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1379
    if-eqz v14, :cond_56a

    .line 1381
    if-eq v12, v4, :cond_568

    .line 1383
    if-ne v12, v5, :cond_56a

    .line 1385
    :cond_568
    const/4 v15, 0x1

    .line 1386
    goto :goto_56b

    .line 1387
    :cond_56a
    const/4 v15, 0x0

    .line 1388
    :goto_56b
    if-nez v8, :cond_575

    .line 1390
    if-eqz v15, :cond_570

    .line 1392
    goto :goto_575

    .line 1393
    :cond_570
    move-object/from16 p1, v3

    .line 1395
    move-object/from16 v15, v27

    .line 1397
    goto :goto_5bd

    .line 1398
    :cond_575
    :goto_575
    iget-object v8, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 1400
    sget-object v15, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 1402
    invoke-static {v8}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 1405
    move-result v8

    .line 1406
    if-nez v8, :cond_5ab

    .line 1408
    const/4 v8, 0x2

    .line 1409
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 1412
    move-result v8

    .line 1413
    if-eqz v8, :cond_5a3

    .line 1415
    const-string v8, "SpecialEffectsController: Container "

    .line 1417
    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    move-result-object v8

    .line 1421
    iget-object v15, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 1423
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1426
    const-string v15, " has not been laid out. Completing operation "

    .line 1428
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1434
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1437
    move-result-object v8

    .line 1438
    move-object/from16 v15, v27

    .line 1440
    invoke-static {v15, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    goto :goto_5a5

    .line 1444
    :cond_5a3
    move-object/from16 v15, v27

    .line 1446
    :goto_5a5
    invoke-virtual {v6}, Landroidx/fragment/app/b$c;->a()V

    .line 1449
    move-object/from16 p1, v3

    .line 1451
    goto :goto_5bd

    .line 1452
    :cond_5ab
    move-object/from16 v15, v27

    .line 1454
    iget-object v8, v6, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1456
    iget-object v8, v8, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 1458
    iget-object v8, v6, Landroidx/fragment/app/b$c;->b:Li0/d;

    .line 1460
    move-object/from16 p1, v3

    .line 1462
    new-instance v3, Landroidx/fragment/app/k;

    .line 1464
    invoke-direct {v3, v6, v12}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/b$d;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1467
    invoke-virtual {v11, v1, v8, v3}, Landroidx/fragment/app/i0;->o(Ljava/lang/Object;Li0/d;Landroidx/fragment/app/k;)V

    .line 1470
    :goto_5bd
    move-object/from16 v3, p1

    .line 1472
    move-object/from16 v27, v15

    .line 1474
    goto :goto_54b

    .line 1475
    :cond_5c2
    move-object/from16 v15, v27

    .line 1477
    iget-object v3, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 1479
    sget-object v6, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 1481
    invoke-static {v3}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 1484
    move-result v3

    .line 1485
    if-nez v3, :cond_5d9

    .line 1487
    :goto_5ce
    const/4 v1, 0x0

    .line 1488
    move-object/from16 v26, v4

    .line 1490
    move-object/from16 v24, v5

    .line 1492
    move-object/from16 v27, v9

    .line 1494
    move-object/from16 v28, v15

    .line 1496
    goto/16 :goto_707

    .line 1498
    :cond_5d9
    const/4 v3, 0x4

    .line 1499
    invoke-static {v2, v3}, Landroidx/fragment/app/c0;->a(Ljava/util/ArrayList;I)V

    .line 1502
    new-instance v3, Ljava/util/ArrayList;

    .line 1504
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1510
    move-result v6

    .line 1511
    const/4 v8, 0x0

    .line 1512
    :goto_5e7
    if-ge v8, v6, :cond_603

    .line 1514
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1517
    move-result-object v12

    .line 1518
    check-cast v12, Landroid/view/View;

    .line 1520
    sget-object v16, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 1522
    move/from16 p1, v6

    .line 1524
    invoke-static {v12}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 1527
    move-result-object v6

    .line 1528
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    const/4 v6, 0x0

    .line 1532
    invoke-static {v12, v6}, Lm0/g0$i;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 1535
    add-int/lit8 v8, v8, 0x1

    .line 1537
    move/from16 v6, p1

    .line 1539
    goto :goto_5e7

    .line 1540
    :cond_603
    const/4 v6, 0x2

    .line 1541
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 1544
    move-result v6

    .line 1545
    if-eqz v6, :cond_683

    .line 1547
    const-string v6, ">>>>> Beginning transition <<<<<"

    .line 1549
    invoke-static {v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const-string v6, ">>>>> SharedElementFirstOutViews <<<<<"

    .line 1554
    invoke-static {v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1560
    move-result-object v6

    .line 1561
    :goto_618
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1564
    move-result v8

    .line 1565
    const-string v12, " Name: "

    .line 1567
    move-object/from16 v24, v5

    .line 1569
    const-string v5, "View: "

    .line 1571
    if-eqz v8, :cond_64d

    .line 1573
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1576
    move-result-object v8

    .line 1577
    check-cast v8, Landroid/view/View;

    .line 1579
    move-object/from16 p1, v6

    .line 1581
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1583
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1586
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    invoke-static {v8}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 1598
    move-result-object v5

    .line 1599
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1605
    move-result-object v5

    .line 1606
    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    move-object/from16 v6, p1

    .line 1611
    move-object/from16 v5, v24

    .line 1613
    goto :goto_618

    .line 1614
    :cond_64d
    const-string v6, ">>>>> SharedElementLastInViews <<<<<"

    .line 1616
    invoke-static {v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1622
    move-result-object v6

    .line 1623
    :goto_656
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1626
    move-result v8

    .line 1627
    if-eqz v8, :cond_685

    .line 1629
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1632
    move-result-object v8

    .line 1633
    check-cast v8, Landroid/view/View;

    .line 1635
    move-object/from16 p1, v6

    .line 1637
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1639
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1642
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    invoke-static {v8}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 1654
    move-result-object v8

    .line 1655
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1661
    move-result-object v6

    .line 1662
    invoke-static {v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    move-object/from16 v6, p1

    .line 1667
    goto :goto_656

    .line 1668
    :cond_683
    move-object/from16 v24, v5

    .line 1670
    :cond_685
    iget-object v5, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 1672
    invoke-virtual {v11, v5, v1}, Landroidx/fragment/app/i0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1675
    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 1677
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1680
    move-result v5

    .line 1681
    new-instance v6, Ljava/util/ArrayList;

    .line 1683
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1686
    const/4 v8, 0x0

    .line 1687
    :goto_696
    if-ge v8, v5, :cond_6e6

    .line 1689
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1692
    move-result-object v12

    .line 1693
    check-cast v12, Landroid/view/View;

    .line 1695
    sget-object v16, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 1697
    move-object/from16 v26, v4

    .line 1699
    invoke-static {v12}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 1702
    move-result-object v4

    .line 1703
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    move-object/from16 v27, v9

    .line 1708
    if-nez v4, :cond_6b0

    .line 1710
    move-object/from16 v28, v15

    .line 1712
    goto :goto_6dd

    .line 1713
    :cond_6b0
    const/4 v9, 0x0

    .line 1714
    invoke-static {v12, v9}, Lm0/g0$i;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 1717
    move-object/from16 v9, v25

    .line 1719
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    move-result-object v12

    .line 1723
    check-cast v12, Ljava/lang/String;

    .line 1725
    const/16 v16, 0x0

    .line 1727
    move/from16 v9, v16

    .line 1729
    :goto_6c0
    move-object/from16 v28, v15

    .line 1731
    if-ge v9, v5, :cond_6dd

    .line 1733
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1736
    move-result-object v15

    .line 1737
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1740
    move-result v15

    .line 1741
    if-eqz v15, :cond_6d8

    .line 1743
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1746
    move-result-object v9

    .line 1747
    check-cast v9, Landroid/view/View;

    .line 1749
    invoke-static {v9, v4}, Lm0/g0$i;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 1752
    goto :goto_6dd

    .line 1753
    :cond_6d8
    add-int/lit8 v9, v9, 0x1

    .line 1755
    move-object/from16 v15, v28

    .line 1757
    goto :goto_6c0

    .line 1758
    :cond_6dd
    :goto_6dd
    add-int/lit8 v8, v8, 0x1

    .line 1760
    move-object/from16 v4, v26

    .line 1762
    move-object/from16 v9, v27

    .line 1764
    move-object/from16 v15, v28

    .line 1766
    goto :goto_696

    .line 1767
    :cond_6e6
    move-object/from16 v26, v4

    .line 1769
    move-object/from16 v27, v9

    .line 1771
    move-object/from16 v28, v15

    .line 1773
    new-instance v4, Landroidx/fragment/app/h0;

    .line 1775
    move-object/from16 v16, v4

    .line 1777
    move/from16 v17, v5

    .line 1779
    move-object/from16 v18, v10

    .line 1781
    move-object/from16 v19, v3

    .line 1783
    move-object/from16 v20, v7

    .line 1785
    move-object/from16 v21, v6

    .line 1787
    invoke-direct/range {v16 .. v21}, Landroidx/fragment/app/h0;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1790
    invoke-static {v1, v4}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 1793
    const/4 v1, 0x0

    .line 1794
    invoke-static {v2, v1}, Landroidx/fragment/app/c0;->a(Ljava/util/ArrayList;I)V

    .line 1797
    invoke-virtual {v11, v14, v7, v10}, Landroidx/fragment/app/i0;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1800
    :goto_707
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1802
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 1805
    move-result v2

    .line 1806
    iget-object v9, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    .line 1808
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1811
    move-result-object v10

    .line 1812
    new-instance v11, Ljava/util/ArrayList;

    .line 1814
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1820
    move-result-object v12

    .line 1821
    move v3, v1

    .line 1822
    :goto_71d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1825
    move-result v4

    .line 1826
    const-string v14, " has started."

    .line 1828
    if-eqz v4, :cond_7ee

    .line 1830
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1833
    move-result-object v4

    .line 1834
    move-object v15, v4

    .line 1835
    check-cast v15, Landroidx/fragment/app/b$b;

    .line 1837
    invoke-virtual {v15}, Landroidx/fragment/app/b$c;->b()Z

    .line 1840
    move-result v4

    .line 1841
    if-eqz v4, :cond_736

    .line 1843
    invoke-virtual {v15}, Landroidx/fragment/app/b$c;->a()V

    .line 1846
    goto :goto_747

    .line 1847
    :cond_736
    invoke-virtual {v15, v10}, Landroidx/fragment/app/b$b;->c(Landroid/content/Context;)Landroidx/fragment/app/m$a;

    .line 1850
    move-result-object v4

    .line 1851
    if-nez v4, :cond_740

    .line 1853
    invoke-virtual {v15}, Landroidx/fragment/app/b$c;->a()V

    .line 1856
    goto :goto_747

    .line 1857
    :cond_740
    iget-object v8, v4, Landroidx/fragment/app/m$a;->b:Landroid/animation/Animator;

    .line 1859
    if-nez v8, :cond_74a

    .line 1861
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    :goto_747
    move-object/from16 v6, v28

    .line 1866
    goto :goto_782

    .line 1867
    :cond_74a
    iget-object v7, v15, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1869
    iget-object v4, v7, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 1871
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1873
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    move-result-object v6

    .line 1877
    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1880
    move-result v5

    .line 1881
    if-eqz v5, :cond_785

    .line 1883
    const/4 v5, 0x2

    .line 1884
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 1887
    move-result v5

    .line 1888
    if-eqz v5, :cond_77d

    .line 1890
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1892
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1895
    const-string v6, "Ignoring Animator set on "

    .line 1897
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1903
    const-string v4, " as this Fragment was involved in a Transition."

    .line 1905
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1911
    move-result-object v4

    .line 1912
    move-object/from16 v6, v28

    .line 1914
    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    goto :goto_77f

    .line 1918
    :cond_77d
    move-object/from16 v6, v28

    .line 1920
    :goto_77f
    invoke-virtual {v15}, Landroidx/fragment/app/b$c;->a()V

    .line 1923
    :goto_782
    move-object/from16 v28, v6

    .line 1925
    goto :goto_71d

    .line 1926
    :cond_785
    move-object/from16 v6, v28

    .line 1928
    iget-object v3, v7, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1930
    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1932
    if-ne v3, v5, :cond_78e

    .line 1934
    const/4 v1, 0x1

    .line 1935
    :cond_78e
    move-object/from16 v5, v27

    .line 1937
    if-eqz v1, :cond_795

    .line 1939
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1942
    :cond_795
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1944
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1947
    new-instance v3, Landroidx/fragment/app/d;

    .line 1949
    move-object/from16 p1, v3

    .line 1951
    move-object/from16 p2, v4

    .line 1953
    move-object v4, v9

    .line 1954
    move-object/from16 v16, v5

    .line 1956
    move-object/from16 v5, p2

    .line 1958
    move-object v0, v6

    .line 1959
    move v6, v1

    .line 1960
    move-object v1, v7

    .line 1961
    move-object/from16 v17, v12

    .line 1963
    move-object v12, v8

    .line 1964
    move-object v8, v15

    .line 1965
    invoke-direct/range {v3 .. v8}, Landroidx/fragment/app/d;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/b$b;)V

    .line 1968
    invoke-virtual {v12, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1971
    move-object/from16 v3, p2

    .line 1973
    invoke-virtual {v12, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1976
    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    .line 1979
    const/4 v3, 0x2

    .line 1980
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 1983
    move-result v3

    .line 1984
    if-eqz v3, :cond_7d8

    .line 1986
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1988
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1991
    const-string v4, "Animator from operation "

    .line 1993
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1999
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2005
    move-result-object v3

    .line 2006
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_7d8
    iget-object v3, v15, Landroidx/fragment/app/b$c;->b:Li0/d;

    .line 2011
    new-instance v4, Landroidx/fragment/app/e;

    .line 2013
    invoke-direct {v4, v12, v1}, Landroidx/fragment/app/e;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 2016
    invoke-virtual {v3, v4}, Li0/d;->setOnCancelListener(Li0/d$b;)V

    .line 2019
    const/4 v1, 0x0

    .line 2020
    const/4 v3, 0x1

    .line 2021
    move-object/from16 v28, v0

    .line 2023
    move-object/from16 v27, v16

    .line 2025
    move-object/from16 v12, v17

    .line 2027
    move-object/from16 v0, p0

    .line 2029
    goto/16 :goto_71d

    .line 2031
    :cond_7ee
    move-object/from16 v16, v27

    .line 2033
    move-object/from16 v0, v28

    .line 2035
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2038
    move-result-object v1

    .line 2039
    :goto_7f6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2042
    move-result v4

    .line 2043
    if-eqz v4, :cond_8a8

    .line 2045
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2048
    move-result-object v4

    .line 2049
    check-cast v4, Landroidx/fragment/app/b$b;

    .line 2051
    iget-object v5, v4, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 2053
    iget-object v6, v5, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 2055
    const-string v7, "Ignoring Animation set on "

    .line 2057
    if-eqz v2, :cond_82c

    .line 2059
    const/4 v5, 0x2

    .line 2060
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 2063
    move-result v5

    .line 2064
    if-eqz v5, :cond_828

    .line 2066
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2068
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2071
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2077
    const-string v6, " as Animations cannot run alongside Transitions."

    .line 2079
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2085
    move-result-object v5

    .line 2086
    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_828
    invoke-virtual {v4}, Landroidx/fragment/app/b$c;->a()V

    .line 2092
    goto :goto_7f6

    .line 2093
    :cond_82c
    if-eqz v3, :cond_850

    .line 2095
    const/4 v5, 0x2

    .line 2096
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 2099
    move-result v5

    .line 2100
    if-eqz v5, :cond_84c

    .line 2102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2107
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2113
    const-string v6, " as Animations cannot run alongside Animators."

    .line 2115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2121
    move-result-object v5

    .line 2122
    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_84c
    invoke-virtual {v4}, Landroidx/fragment/app/b$c;->a()V

    .line 2128
    goto :goto_7f6

    .line 2129
    :cond_850
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2131
    invoke-virtual {v4, v10}, Landroidx/fragment/app/b$b;->c(Landroid/content/Context;)Landroidx/fragment/app/m$a;

    .line 2134
    move-result-object v7

    .line 2135
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2138
    iget-object v7, v7, Landroidx/fragment/app/m$a;->a:Landroid/view/animation/Animation;

    .line 2140
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2143
    iget-object v8, v5, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2145
    sget-object v11, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2147
    if-eq v8, v11, :cond_86b

    .line 2149
    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2152
    invoke-virtual {v4}, Landroidx/fragment/app/b$c;->a()V

    .line 2155
    goto :goto_89c

    .line 2156
    :cond_86b
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 2159
    new-instance v8, Landroidx/fragment/app/m$b;

    .line 2161
    invoke-direct {v8, v7, v9, v6}, Landroidx/fragment/app/m$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2164
    new-instance v7, Landroidx/fragment/app/f;

    .line 2166
    invoke-direct {v7, v6, v9, v4, v5}, Landroidx/fragment/app/f;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/b$b;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 2169
    invoke-virtual {v8, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2172
    invoke-virtual {v6, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2175
    const/4 v7, 0x2

    .line 2176
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 2179
    move-result v7

    .line 2180
    if-eqz v7, :cond_89c

    .line 2182
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2184
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2187
    const-string v8, "Animation from operation "

    .line 2189
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2192
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2195
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2201
    move-result-object v7

    .line 2202
    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_89c
    :goto_89c
    iget-object v7, v4, Landroidx/fragment/app/b$c;->b:Li0/d;

    .line 2207
    new-instance v8, Landroidx/fragment/app/g;

    .line 2209
    invoke-direct {v8, v6, v9, v4, v5}, Landroidx/fragment/app/g;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/b$b;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 2212
    invoke-virtual {v7, v8}, Li0/d;->setOnCancelListener(Li0/d$b;)V

    .line 2215
    goto/16 :goto_7f6

    .line 2217
    :cond_8a8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2220
    move-result-object v1

    .line 2221
    :goto_8ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2224
    move-result v2

    .line 2225
    if-eqz v2, :cond_8c2

    .line 2227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2230
    move-result-object v2

    .line 2231
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 2233
    iget-object v3, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    .line 2235
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 2237
    iget-object v2, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 2239
    invoke-virtual {v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 2242
    goto :goto_8ac

    .line 2243
    :cond_8c2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 2246
    const/4 v1, 0x2

    .line 2247
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 2250
    move-result v1

    .line 2251
    if-eqz v1, :cond_8ec

    .line 2253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2255
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2258
    const-string v2, "Completed executing operations from "

    .line 2260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    move-object/from16 v4, v26

    .line 2265
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2268
    move-object/from16 v2, v22

    .line 2270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    move-object/from16 v5, v24

    .line 2275
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2281
    move-result-object v1

    .line 2282
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_8ec
    return-void
.end method
