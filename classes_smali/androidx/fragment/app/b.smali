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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static j(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 6

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lm0/k0;->b(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, p0, :cond_37

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2b

    invoke-static {v2, p1}, Landroidx/fragment/app/b;->j(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2e
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_37
    return-void
.end method

.method public static k(Landroidx/collection/a;Landroid/view/View;)V
    .registers 6

    sget-object v0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_28

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_25

    invoke-static {p0, v2}, Landroidx/fragment/app/b;->k(Landroidx/collection/a;Landroid/view/View;)V

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    return-void
.end method

.method public static l(Landroidx/collection/a;Ljava/util/Collection;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/collection/a;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_2a
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;Z)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v10, v6, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v10}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v10

    sget-object v11, Landroidx/fragment/app/b$a;->a:[I

    iget-object v12, v6, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_3d

    if-eq v11, v8, :cond_3d

    const/4 v8, 0x3

    if-eq v11, v8, :cond_3d

    if-eq v11, v7, :cond_37

    goto :goto_c

    :cond_37
    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v10, v7, :cond_c

    move-object v5, v6

    goto :goto_c

    :cond_3d
    sget-object v7, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v10, v7, :cond_c

    if-nez v4, :cond_c

    move-object v4, v6

    goto :goto_c

    :cond_45
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v3

    const-string v6, " to "

    const-string v7, "FragmentManager"

    if-eqz v3, :cond_69

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing operations from "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v10, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ad

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v12, v12, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    iget-object v13, v10, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$j;

    iget v14, v13, Landroidx/fragment/app/Fragment$j;->b:I

    iput v14, v12, Landroidx/fragment/app/Fragment$j;->b:I

    iget v14, v13, Landroidx/fragment/app/Fragment$j;->c:I

    iput v14, v12, Landroidx/fragment/app/Fragment$j;->c:I

    iget v14, v13, Landroidx/fragment/app/Fragment$j;->d:I

    iput v14, v12, Landroidx/fragment/app/Fragment$j;->d:I

    iget v13, v13, Landroidx/fragment/app/Fragment$j;->e:I

    iput v13, v12, Landroidx/fragment/app/Fragment$j;->e:I

    goto :goto_8a

    :cond_ad
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/SpecialEffectsController$Operation;

    new-instance v11, Li0/d;

    invoke-direct {v11}, Li0/d;-><init>()V

    invoke-virtual {v10}, Landroidx/fragment/app/SpecialEffectsController$Operation;->d()V

    iget-object v12, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroidx/fragment/app/b$b;

    invoke-direct {v12, v10, v11, v2}, Landroidx/fragment/app/b$b;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;Z)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Li0/d;

    invoke-direct {v11}, Li0/d;-><init>()V

    invoke-virtual {v10}, Landroidx/fragment/app/SpecialEffectsController$Operation;->d()V

    iget-object v12, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->e:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v12, Landroidx/fragment/app/b$d;

    if-eqz v2, :cond_e6

    if-ne v10, v4, :cond_ea

    goto :goto_e8

    :cond_e6
    if-ne v10, v5, :cond_ea

    :goto_e8
    const/4 v13, 0x1

    goto :goto_eb

    :cond_ea
    const/4 v13, 0x0

    :goto_eb
    invoke-direct {v12, v10, v11, v2, v13}, Landroidx/fragment/app/b$d;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Li0/d;ZZ)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroidx/fragment/app/c;

    invoke-direct {v11, v0, v9, v10}, Landroidx/fragment/app/c;-><init>(Landroidx/fragment/app/b;Ljava/util/ArrayList;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    iget-object v10, v10, Landroidx/fragment/app/SpecialEffectsController$Operation;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    :cond_fc
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_106
    :goto_106
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_186

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/b$d;

    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->b()Z

    move-result v13

    if-eqz v13, :cond_119

    goto :goto_106

    :cond_119
    iget-object v13, v12, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Landroidx/fragment/app/b$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/i0;

    move-result-object v13

    iget-object v14, v12, Landroidx/fragment/app/b$d;->e:Ljava/lang/Object;

    invoke-virtual {v12, v14}, Landroidx/fragment/app/b$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/i0;

    move-result-object v14

    const-string v15, " returned Transition "

    const-string v16, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v13, :cond_157

    if-eqz v14, :cond_157

    if-ne v13, v14, :cond_130

    goto :goto_157

    :cond_130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v3, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroidx/fragment/app/b$d;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_157
    :goto_157
    if-eqz v13, :cond_15a

    goto :goto_15b

    :cond_15a
    move-object v13, v14

    :goto_15b
    if-nez v11, :cond_15f

    move-object v11, v13

    goto :goto_106

    :cond_15f
    if-eqz v13, :cond_106

    if-ne v11, v13, :cond_164

    goto :goto_106

    :cond_164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v3, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_186
    if-nez v11, :cond_1ab

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/b$d;

    iget-object v10, v8, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroidx/fragment/app/b$c;->a()V

    goto :goto_18c

    :cond_1a3
    move-object v13, v1

    move-object/from16 v23, v3

    move-object/from16 v22, v6

    move-object v15, v7

    goto/16 :goto_5ce

    :cond_1ab
    new-instance v10, Landroid/view/View;

    iget-object v12, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroidx/collection/a;

    invoke-direct {v12}, Landroidx/collection/a;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v23, v3

    move-object v3, v4

    move-object/from16 v22, v6

    move-object/from16 v24, v9

    move-object/from16 v6, v16

    move-object/from16 v20, v17

    move-object v9, v5

    :goto_1e0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_40e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v6

    move-object/from16 v6, v16

    check-cast v6, Landroidx/fragment/app/b$d;

    iget-object v6, v6, Landroidx/fragment/app/b$d;->e:Ljava/lang/Object;

    if-eqz v6, :cond_1f7

    const/16 v16, 0x1

    goto :goto_1f9

    :cond_1f7
    const/16 v16, 0x0

    :goto_1f9
    if-eqz v16, :cond_3ea

    if-eqz v3, :cond_3ea

    if-eqz v9, :cond_3ea

    invoke-virtual {v11, v6}, Landroidx/fragment/app/i0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/fragment/app/i0;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v21, v8

    iget-object v8, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v25, v1

    iget-object v1, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementSourceNames()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v26, v10

    iget-object v10, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v10

    const/16 v16, 0x0

    move-object/from16 p1, v6

    move-object/from16 v17, v15

    move/from16 v15, v16

    :goto_227
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v15, v6, :cond_248

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    move-object/from16 v16, v10

    const/4 v10, -0x1

    if-eq v6, v10, :cond_243

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v6, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_243
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v16

    goto :goto_227

    :cond_248
    iget-object v1, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getSharedElementTargetNames()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v2, :cond_25b

    iget-object v6, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ld0/o;

    iget-object v6, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    goto :goto_265

    :cond_25b
    iget-object v6, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    iget-object v6, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Ld0/o;

    :goto_265
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_26a
    if-ge v10, v6, :cond_284

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v27, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v12, v15, v6}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v27

    goto :goto_26a

    :cond_284
    const/4 v6, 0x2

    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v6

    if-eqz v6, :cond_2e5

    const-string v6, ">>> entering view names <<<"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_294
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v15, "Name: "

    if-eqz v10, :cond_2b9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v16, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, v16

    goto :goto_294

    :cond_2b9
    const-string v6, ">>> exiting view names <<<"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2c2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2e5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v16, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, v16

    goto :goto_2c2

    :cond_2e5
    new-instance v6, Landroidx/collection/a;

    invoke-direct {v6}, Landroidx/collection/a;-><init>()V

    iget-object v10, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v6, v10}, Landroidx/fragment/app/b;->k(Landroidx/collection/a;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    new-instance v10, Landroidx/collection/a;

    invoke-direct {v10}, Landroidx/collection/a;-><init>()V

    iget-object v15, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v15, v15, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v10, v15}, Landroidx/fragment/app/b;->k(Landroidx/collection/a;Landroid/view/View;)V

    invoke-virtual {v10, v1}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v12}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    sget-object v15, Landroidx/fragment/app/c0;->a:Landroidx/fragment/app/e0;

    invoke-virtual {v12}, Landroidx/collection/f;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    :goto_319
    if-ltz v15, :cond_333

    invoke-virtual {v12, v15}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v27, v7

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32e

    invoke-virtual {v12, v15}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    :cond_32e
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v7, v27

    goto :goto_319

    :cond_333
    move-object/from16 v27, v7

    invoke-virtual {v12}, Landroidx/collection/a;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/fragment/app/b;->l(Landroidx/collection/a;Ljava/util/Collection;)V

    invoke-virtual {v12}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-static {v10, v7}, Landroidx/fragment/app/b;->l(Landroidx/collection/a;Ljava/util/Collection;)V

    invoke-virtual {v12}, Landroidx/collection/f;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_35c

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move-object v6, v12

    move-object v10, v13

    move-object v7, v14

    move-object/from16 v8, v17

    move-object/from16 v15, v25

    move-object v12, v1

    move-object/from16 v1, v26

    goto/16 :goto_3fe

    :cond_35c
    iget-object v7, v9, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_366

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    goto :goto_369

    :cond_366
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Ld0/o;

    :goto_369
    iget-object v3, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    new-instance v7, Landroidx/fragment/app/h;

    invoke-direct {v7, v5, v4, v2, v10}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/a;)V

    invoke-static {v3, v7}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_395

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object/from16 v7, p1

    invoke-virtual {v11, v6, v7}, Landroidx/fragment/app/i0;->m(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v20, v6

    goto :goto_398

    :cond_395
    move-object/from16 v7, p1

    const/4 v3, 0x0

    :goto_398
    invoke-virtual {v10}, Landroidx/collection/a;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3c3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3c3

    iget-object v3, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    new-instance v6, Landroidx/fragment/app/i;

    move-object/from16 v8, v17

    invoke-direct {v6, v11, v1, v8}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/i0;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v3, v6}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    move/from16 v19, v1

    goto :goto_3c5

    :cond_3c3
    move-object/from16 v8, v17

    :goto_3c5
    move-object/from16 v1, v26

    invoke-virtual {v11, v7, v1, v14}, Landroidx/fragment/app/i0;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    const/4 v15, 0x0

    move-object v6, v12

    move-object v12, v11

    move-object v10, v13

    move-object v13, v7

    move-object v9, v14

    move-object v14, v3

    move-object/from16 v16, v7

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/i0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v15, v25

    invoke-virtual {v15, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v5

    move-object v12, v7

    move-object v7, v9

    move-object/from16 v3, v20

    move-object v9, v4

    goto :goto_3fa

    :cond_3ea
    move-object/from16 v27, v7

    move-object/from16 v21, v8

    move-object v6, v12

    move-object v7, v14

    move-object v8, v15

    move-object v15, v1

    move-object v1, v10

    move-object v10, v13

    move-object/from16 v12, p1

    move-object v13, v9

    move-object v9, v3

    move-object/from16 v3, v20

    :goto_3fa
    move-object/from16 v20, v3

    move-object v3, v9

    move-object v9, v13

    :goto_3fe
    move-object v14, v7

    move-object v13, v10

    move-object/from16 v7, v27

    move-object v10, v1

    move-object v1, v15

    move-object v15, v8

    move-object/from16 v8, v21

    move-object/from16 v33, v12

    move-object v12, v6

    move-object/from16 v6, v33

    goto/16 :goto_1e0

    :cond_40e
    move-object/from16 p1, v6

    move-object/from16 v27, v7

    move-object/from16 v21, v8

    move-object v6, v12

    move-object v7, v14

    move-object v8, v15

    move-object v15, v1

    move-object v1, v10

    move-object v10, v13

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v12

    :goto_426
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_534

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/b$d;

    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->b()Z

    move-result v16

    if-eqz v16, :cond_44b

    move-object/from16 p2, v13

    iget-object v13, v12, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    move-object/from16 v16, v14

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->a()V

    move-object/from16 v13, p2

    move-object/from16 v14, v16

    goto :goto_426

    :cond_44b
    move-object/from16 p2, v13

    move-object/from16 v16, v14

    iget-object v13, v12, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    invoke-virtual {v11, v13}, Landroidx/fragment/app/i0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iget-object v13, v12, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    if-eqz p1, :cond_45f

    if-eq v13, v3, :cond_45d

    if-ne v13, v9, :cond_45f

    :cond_45d
    const/4 v9, 0x1

    goto :goto_460

    :cond_45f
    const/4 v9, 0x0

    :goto_460
    if-nez v14, :cond_479

    if-nez v9, :cond_46c

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Landroidx/fragment/app/b$c;->a()V

    :cond_46c
    move-object/from16 v3, p2

    move-object/from16 v25, v6

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v6, v20

    move-object/from16 v9, v24

    goto/16 :goto_528

    :cond_479
    move-object/from16 v25, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v12

    iget-object v12, v13, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v12, v12, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v12, v6}, Landroidx/fragment/app/b;->j(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v9, :cond_494

    if-ne v13, v3, :cond_491

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_494

    :cond_491
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_494
    :goto_494
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4a7

    invoke-virtual {v11, v1, v14}, Landroidx/fragment/app/i0;->a(Landroid/view/View;Ljava/lang/Object;)V

    move-object/from16 v29, p2

    move-object v3, v13

    move-object/from16 v32, v15

    move-object/from16 v31, v16

    move-object/from16 v28, v17

    goto :goto_4f1

    :cond_4a7
    invoke-virtual {v11, v6, v14}, Landroidx/fragment/app/i0;->b(Ljava/util/ArrayList;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object/from16 v28, v17

    move-object v12, v11

    move-object/from16 v29, p2

    move-object/from16 v30, v13

    move-object v13, v14

    move-object/from16 p2, v14

    move-object/from16 v31, v16

    move-object/from16 v32, v15

    move-object v15, v6

    move-object/from16 v16, v3

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroidx/fragment/app/i0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v3, v30

    iget-object v9, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v12, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v9, v12, :cond_4ef

    move-object/from16 v9, v24

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v13, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v13, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v14, p2

    invoke-virtual {v11, v14, v13, v12}, Landroidx/fragment/app/i0;->k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v12, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    new-instance v13, Landroidx/fragment/app/j;

    invoke-direct {v13, v6}, Landroidx/fragment/app/j;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v12, v13}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    goto :goto_4f3

    :cond_4ef
    move-object/from16 v14, p2

    :goto_4f1
    move-object/from16 v9, v24

    :goto_4f3
    iget-object v12, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v13, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v12, v13, :cond_504

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v19, :cond_501

    invoke-virtual {v11, v14, v8}, Landroidx/fragment/app/i0;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_501
    move-object/from16 v6, v20

    goto :goto_509

    :cond_504
    move-object/from16 v6, v20

    invoke-virtual {v11, v6, v14}, Landroidx/fragment/app/i0;->m(Landroid/view/View;Ljava/lang/Object;)V

    :goto_509
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v13, v32

    invoke-virtual {v13, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v28

    iget-boolean v3, v12, Landroidx/fragment/app/b$d;->d:Z

    if-eqz v3, :cond_51f

    move-object/from16 v3, v29

    invoke-virtual {v11, v3, v14}, Landroidx/fragment/app/i0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v14, v31

    goto :goto_528

    :cond_51f
    move-object/from16 v3, v29

    move-object/from16 v12, v31

    invoke-virtual {v11, v12, v14}, Landroidx/fragment/app/i0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    :goto_528
    move-object/from16 v20, v6

    move-object/from16 v24, v9

    move-object v15, v13

    move-object/from16 v6, v25

    move-object v13, v3

    move-object v3, v4

    move-object v9, v5

    goto/16 :goto_426

    :cond_534
    move-object/from16 v25, v6

    move-object v3, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v9, v24

    move-object/from16 v14, p1

    invoke-virtual {v11, v3, v12, v14}, Landroidx/fragment/app/i0;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_547

    move-object/from16 v15, v27

    goto/16 :goto_5ce

    :cond_547
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_54b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/b$d;

    invoke-virtual {v6}, Landroidx/fragment/app/b$c;->b()Z

    move-result v8

    if-eqz v8, :cond_55e

    goto :goto_54b

    :cond_55e
    iget-object v8, v6, Landroidx/fragment/app/b$d;->c:Ljava/lang/Object;

    iget-object v12, v6, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    if-eqz v14, :cond_56a

    if-eq v12, v4, :cond_568

    if-ne v12, v5, :cond_56a

    :cond_568
    const/4 v15, 0x1

    goto :goto_56b

    :cond_56a
    const/4 v15, 0x0

    :goto_56b
    if-nez v8, :cond_575

    if-eqz v15, :cond_570

    goto :goto_575

    :cond_570
    move-object/from16 p1, v3

    move-object/from16 v15, v27

    goto :goto_5bd

    :cond_575
    :goto_575
    iget-object v8, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    sget-object v15, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v8}, Lm0/g0$g;->c(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_5ab

    const/4 v8, 0x2

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v8

    if-eqz v8, :cond_5a3

    const-string v8, "SpecialEffectsController: Container "

    invoke-static {v8}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v15, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " has not been laid out. Completing operation "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v15, v27

    invoke-static {v15, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a5

    :cond_5a3
    move-object/from16 v15, v27

    :goto_5a5
    invoke-virtual {v6}, Landroidx/fragment/app/b$c;->a()V

    move-object/from16 p1, v3

    goto :goto_5bd

    :cond_5ab
    move-object/from16 v15, v27

    iget-object v8, v6, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v8, v8, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v6, Landroidx/fragment/app/b$c;->b:Li0/d;

    move-object/from16 p1, v3

    new-instance v3, Landroidx/fragment/app/k;

    invoke-direct {v3, v6, v12}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/b$d;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v11, v1, v8, v3}, Landroidx/fragment/app/i0;->o(Ljava/lang/Object;Li0/d;Landroidx/fragment/app/k;)V

    :goto_5bd
    move-object/from16 v3, p1

    move-object/from16 v27, v15

    goto :goto_54b

    :cond_5c2
    move-object/from16 v15, v27

    iget-object v3, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    sget-object v6, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Lm0/g0$g;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_5d9

    :goto_5ce
    const/4 v1, 0x0

    move-object/from16 v26, v4

    move-object/from16 v24, v5

    move-object/from16 v27, v9

    move-object/from16 v28, v15

    goto/16 :goto_707

    :cond_5d9
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroidx/fragment/app/c0;->a(Ljava/util/ArrayList;I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_5e7
    if-ge v8, v6, :cond_603

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    sget-object v16, Lm0/g0;->a:Ljava/util/WeakHashMap;

    move/from16 p1, v6

    invoke-static {v12}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-static {v12, v6}, Lm0/g0$i;->v(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, p1

    goto :goto_5e7

    :cond_603
    const/4 v6, 0x2

    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v6

    if-eqz v6, :cond_683

    const-string v6, ">>>>> Beginning transition <<<<<"

    invoke-static {v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_618
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v12, " Name: "

    move-object/from16 v24, v5

    const-string v5, "View: "

    if-eqz v8, :cond_64d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object/from16 p1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p1

    move-object/from16 v5, v24

    goto :goto_618

    :cond_64d
    const-string v6, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_656
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_685

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object/from16 p1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p1

    goto :goto_656

    :cond_683
    move-object/from16 v24, v5

    :cond_685
    iget-object v5, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    invoke-virtual {v11, v5, v1}, Landroidx/fragment/app/i0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_696
    if-ge v8, v5, :cond_6e6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    sget-object v16, Lm0/g0;->a:Ljava/util/WeakHashMap;

    move-object/from16 v26, v4

    invoke-static {v12}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v9

    if-nez v4, :cond_6b0

    move-object/from16 v28, v15

    goto :goto_6dd

    :cond_6b0
    const/4 v9, 0x0

    invoke-static {v12, v9}, Lm0/g0$i;->v(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v9, v25

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v9, v16

    :goto_6c0
    move-object/from16 v28, v15

    if-ge v9, v5, :cond_6dd

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6d8

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-static {v9, v4}, Lm0/g0$i;->v(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6dd

    :cond_6d8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v15, v28

    goto :goto_6c0

    :cond_6dd
    :goto_6dd
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v26

    move-object/from16 v9, v27

    move-object/from16 v15, v28

    goto :goto_696

    :cond_6e6
    move-object/from16 v26, v4

    move-object/from16 v27, v9

    move-object/from16 v28, v15

    new-instance v4, Landroidx/fragment/app/h0;

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v10

    move-object/from16 v19, v3

    move-object/from16 v20, v7

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v21}, Landroidx/fragment/app/h0;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v1, v4}, Lm0/y;->a(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroidx/fragment/app/c0;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v11, v14, v7, v10}, Landroidx/fragment/app/i0;->q(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_707
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    iget-object v9, v0, Landroidx/fragment/app/SpecialEffectsController;->a:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v3, v1

    :goto_71d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v14, " has started."

    if-eqz v4, :cond_7ee

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroidx/fragment/app/b$b;

    invoke-virtual {v15}, Landroidx/fragment/app/b$c;->b()Z

    move-result v4

    if-eqz v4, :cond_736

    invoke-virtual {v15}, Landroidx/fragment/app/b$c;->a()V

    goto :goto_747

    :cond_736
    invoke-virtual {v15, v10}, Landroidx/fragment/app/b$b;->c(Landroid/content/Context;)Landroidx/fragment/app/m$a;

    move-result-object v4

    if-nez v4, :cond_740

    invoke-virtual {v15}, Landroidx/fragment/app/b$c;->a()V

    goto :goto_747

    :cond_740
    iget-object v8, v4, Landroidx/fragment/app/m$a;->b:Landroid/animation/Animator;

    if-nez v8, :cond_74a

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_747
    move-object/from16 v6, v28

    goto :goto_782

    :cond_74a
    iget-object v7, v15, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v4, v7, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_785

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v5

    if-eqz v5, :cond_77d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring Animator set on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as this Fragment was involved in a Transition."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, v28

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77f

    :cond_77d
    move-object/from16 v6, v28

    :goto_77f
    invoke-virtual {v15}, Landroidx/fragment/app/b$c;->a()V

    :goto_782
    move-object/from16 v28, v6

    goto :goto_71d

    :cond_785
    move-object/from16 v6, v28

    iget-object v3, v7, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-ne v3, v5, :cond_78e

    const/4 v1, 0x1

    :cond_78e
    move-object/from16 v5, v27

    if-eqz v1, :cond_795

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_795
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v3, Landroidx/fragment/app/d;

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object v4, v9

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    move-object v0, v6

    move v6, v1

    move-object v1, v7

    move-object/from16 v17, v12

    move-object v12, v8

    move-object v8, v15

    invoke-direct/range {v3 .. v8}, Landroidx/fragment/app/d;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/b$b;)V

    invoke-virtual {v12, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v3, p2

    invoke-virtual {v12, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v3

    if-eqz v3, :cond_7d8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animator from operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d8
    iget-object v3, v15, Landroidx/fragment/app/b$c;->b:Li0/d;

    new-instance v4, Landroidx/fragment/app/e;

    invoke-direct {v4, v12, v1}, Landroidx/fragment/app/e;-><init>(Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v3, v4}, Li0/d;->setOnCancelListener(Li0/d$b;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 v28, v0

    move-object/from16 v27, v16

    move-object/from16 v12, v17

    move-object/from16 v0, p0

    goto/16 :goto_71d

    :cond_7ee
    move-object/from16 v16, v27

    move-object/from16 v0, v28

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7f6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/b$b;

    iget-object v5, v4, Landroidx/fragment/app/b$c;->a:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v6, v5, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    const-string v7, "Ignoring Animation set on "

    if-eqz v2, :cond_82c

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v5

    if-eqz v5, :cond_828

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Transitions."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_828
    invoke-virtual {v4}, Landroidx/fragment/app/b$c;->a()V

    goto :goto_7f6

    :cond_82c
    if-eqz v3, :cond_850

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v5

    if-eqz v5, :cond_84c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Animators."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84c
    invoke-virtual {v4}, Landroidx/fragment/app/b$c;->a()V

    goto :goto_7f6

    :cond_850
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroidx/fragment/app/b$b;->c(Landroid/content/Context;)Landroidx/fragment/app/m$a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Landroidx/fragment/app/m$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v5, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    sget-object v11, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    if-eq v8, v11, :cond_86b

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4}, Landroidx/fragment/app/b$c;->a()V

    goto :goto_89c

    :cond_86b
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v8, Landroidx/fragment/app/m$b;

    invoke-direct {v8, v7, v9, v6}, Landroidx/fragment/app/m$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v7, Landroidx/fragment/app/f;

    invoke-direct {v7, v6, v9, v4, v5}, Landroidx/fragment/app/f;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/b$b;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v8, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v7, 0x2

    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v7

    if-eqz v7, :cond_89c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Animation from operation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89c
    :goto_89c
    iget-object v7, v4, Landroidx/fragment/app/b$c;->b:Li0/d;

    new-instance v8, Landroidx/fragment/app/g;

    invoke-direct {v8, v6, v9, v4, v5}, Landroidx/fragment/app/g;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/b$b;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    invoke-virtual {v7, v8}, Li0/d;->setOnCancelListener(Li0/d$b;)V

    goto/16 :goto_7f6

    :cond_8a8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object v3, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v2, Landroidx/fragment/app/SpecialEffectsController$Operation;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    goto :goto_8ac

    :cond_8c2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    move-result v1

    if-eqz v1, :cond_8ec

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed executing operations from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v24

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8ec
    return-void
.end method
