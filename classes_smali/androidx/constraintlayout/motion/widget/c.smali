.class public final Landroidx/constraintlayout/motion/widget/c;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/c$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:Ly/g;

.field public g:Landroidx/constraintlayout/widget/c$a;

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Landroid/content/Context;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/c;->c:Z

    .line 10
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->d:I

    .line 12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->h:I

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->i:I

    .line 16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->l:I

    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->m:Ljava/lang/String;

    .line 21
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->n:I

    .line 23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->p:I

    .line 25
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->q:I

    .line 27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->r:I

    .line 29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->s:I

    .line 31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->t:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/motion/widget/c;->u:I

    .line 35
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/c;->o:Landroid/content/Context;

    .line 37
    :try_start_24
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 40
    move-result v2
    :try_end_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_28} :catch_e1
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_dc

    .line 41
    :goto_28
    const/4 v3, 0x1

    .line 42
    if-eq v2, v3, :cond_e5

    .line 44
    const/4 v4, 0x3

    .line 45
    const/4 v5, 0x2

    .line 46
    const-string v6, "ViewTransition"

    .line 48
    if-eq v2, v5, :cond_40

    .line 50
    if-eq v2, v4, :cond_35

    .line 52
    goto/16 :goto_d6

    .line 54
    :cond_35
    :try_start_35
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_d6

    .line 64
    return-void

    .line 65
    :cond_40
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 72
    move-result v7

    .line 73
    const/4 v8, 0x4

    .line 74
    sparse-switch v7, :sswitch_data_e6

    .line 77
    goto :goto_7d

    .line 78
    :sswitch_4d
    const-string v7, "CustomAttribute"

    .line 80
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_7d

    .line 86
    move v7, v4

    .line 87
    goto :goto_7e

    .line 88
    :sswitch_57
    const-string v7, "CustomMethod"

    .line 90
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_7d

    .line 96
    move v7, v8

    .line 97
    goto :goto_7e

    .line 98
    :sswitch_61
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_7d

    .line 104
    move v7, v1

    .line 105
    goto :goto_7e

    .line 106
    :sswitch_69
    const-string v7, "KeyFrameSet"

    .line 108
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_7d

    .line 114
    move v7, v3

    .line 115
    goto :goto_7e

    .line 116
    :sswitch_73
    const-string v7, "ConstraintOverride"

    .line 118
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_7d

    .line 124
    move v7, v5

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    :goto_7d
    move v7, v0

    .line 127
    :goto_7e
    if-eqz v7, :cond_d3

    .line 129
    if-eq v7, v3, :cond_cb

    .line 131
    if-eq v7, v5, :cond_c4

    .line 133
    if-eq v7, v4, :cond_bc

    .line 135
    if-eq v7, v8, :cond_bc

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    invoke-static {}, Ly/a;->a()Ljava/lang/String;

    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v4, " unknown tag "

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v2

    .line 161
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const-string v3, ".xml:"

    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 177
    move-result v3

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto :goto_d6

    .line 189
    :cond_bc
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->g:Landroidx/constraintlayout/widget/c$a;

    .line 191
    iget-object v2, v2, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    .line 193
    invoke-static {p1, p2, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    .line 196
    goto :goto_d6

    .line 197
    :cond_c4
    invoke-static {p1, p2}, Landroidx/constraintlayout/widget/c;->d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/constraintlayout/widget/c$a;

    .line 200
    move-result-object v2

    .line 201
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->g:Landroidx/constraintlayout/widget/c$a;

    .line 203
    goto :goto_d6

    .line 204
    :cond_cb
    new-instance v2, Ly/g;

    .line 206
    invoke-direct {v2, p1, p2}, Ly/g;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 209
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->f:Ly/g;

    .line 211
    goto :goto_d6

    .line 212
    :cond_d3
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/c;->d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 215
    :cond_d6
    :goto_d6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 218
    move-result v2
    :try_end_da
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_da} :catch_e1
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_da} :catch_dc

    .line 219
    goto/16 :goto_28

    .line 221
    :catch_dc
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    goto :goto_e5

    .line 226
    :catch_e1
    move-exception p1

    .line 227
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 230
    :cond_e5
    :goto_e5
    return-void

    .line 231
    :sswitch_data_e6
    .sparse-switch
        -0x74f4db17 -> :sswitch_73
        -0x49df9cec -> :sswitch_69
        0x3b205fa -> :sswitch_61
        0x15d883d2 -> :sswitch_57
        0x6acd460b -> :sswitch_4d
    .end sparse-switch
.end method


# virtual methods
.method public final varargs a(Landroidx/constraintlayout/motion/widget/d;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/c;[Landroid/view/View;)V
    .registers 48

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/c;->c:Z

    if-eqz v5, :cond_f

    return-void

    .line 2
    :cond_f
    iget v5, v0, Landroidx/constraintlayout/motion/widget/c;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_1759

    .line 3
    aget-object v2, v4, v7

    .line 4
    new-instance v11, Ly/m;

    invoke-direct {v11, v2}, Ly/m;-><init>(Landroid/view/View;)V

    .line 5
    iget-object v3, v11, Ly/m;->d:Ly/o;

    const/4 v4, 0x0

    iput v4, v3, Ly/o;->b:F

    .line 6
    iput v4, v3, Ly/o;->c:F

    .line 7
    iput-boolean v8, v11, Ly/m;->B:Z

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 9
    iput v4, v3, Ly/o;->d:F

    .line 10
    iput v5, v3, Ly/o;->e:F

    .line 11
    iput v6, v3, Ly/o;->f:F

    .line 12
    iput v7, v3, Ly/o;->g:F

    .line 13
    iget-object v3, v11, Ly/m;->e:Ly/o;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 14
    iput v4, v3, Ly/o;->d:F

    .line 15
    iput v5, v3, Ly/o;->e:F

    .line 16
    iput v6, v3, Ly/o;->f:F

    .line 17
    iput v7, v3, Ly/o;->g:F

    .line 18
    iget-object v3, v11, Ly/m;->f:Ly/l;

    invoke-virtual {v3, v2}, Ly/l;->c(Landroid/view/View;)V

    .line 19
    iget-object v3, v11, Ly/m;->g:Ly/l;

    invoke-virtual {v3, v2}, Ly/l;->c(Landroid/view/View;)V

    .line 20
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/c;->f:Ly/g;

    .line 21
    iget-object v2, v2, Ly/g;->a:Ljava/util/HashMap;

    const/4 v3, -0x1

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7c

    .line 23
    iget-object v4, v11, Ly/m;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    :cond_7c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 25
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 26
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 27
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 28
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 29
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 30
    iget v5, v11, Ly/m;->w:I

    if-eq v5, v3, :cond_a9

    .line 31
    iget-object v3, v11, Ly/m;->d:Ly/o;

    iput v5, v3, Ly/o;->i:I

    .line 32
    :cond_a9
    iget-object v3, v11, Ly/m;->f:Ly/l;

    iget-object v5, v11, Ly/m;->g:Ly/l;

    .line 33
    iget v6, v3, Ly/l;->a:F

    .line 34
    iget v7, v5, Ly/l;->a:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v8, "alpha"

    if-eqz v6, :cond_bc

    .line 35
    invoke-virtual {v15, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_bc
    iget v6, v3, Ly/l;->c:F

    iget v7, v5, Ly/l;->c:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "elevation"

    if-eqz v6, :cond_cb

    .line 37
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_cb
    iget v6, v3, Ly/l;->b:I

    move-object/from16 p3, v7

    iget v7, v5, Ly/l;->b:I

    if-eq v6, v7, :cond_da

    if-eqz v6, :cond_d7

    if-nez v7, :cond_da

    .line 39
    :cond_d7
    invoke-virtual {v15, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_da
    iget v6, v3, Ly/l;->d:F

    iget v7, v5, Ly/l;->d:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "rotation"

    if-eqz v6, :cond_e9

    .line 41
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_e9
    iget v6, v3, Ly/l;->n:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    const-string v1, "transitionPathRotate"

    if-eqz v6, :cond_fb

    iget v6, v5, Ly/l;->n:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_fe

    .line 43
    :cond_fb
    invoke-virtual {v15, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_fe
    iget v6, v3, Ly/l;->o:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    const-string v0, "progress"

    if-eqz v6, :cond_110

    iget v6, v5, Ly/l;->o:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_113

    .line 45
    :cond_110
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_113
    iget v6, v3, Ly/l;->e:F

    move-object/from16 p4, v7

    iget v7, v5, Ly/l;->e:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "rotationX"

    if-eqz v6, :cond_124

    .line 47
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_124
    iget v6, v3, Ly/l;->f:F

    move-object/from16 p5, v7

    iget v7, v5, Ly/l;->f:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "rotationY"

    if-eqz v6, :cond_135

    .line 49
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_135
    iget v6, v3, Ly/l;->i:F

    move-object/from16 v16, v7

    iget v7, v5, Ly/l;->i:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "transformPivotX"

    if-eqz v6, :cond_146

    .line 51
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_146
    iget v6, v3, Ly/l;->j:F

    move-object/from16 v17, v7

    iget v7, v5, Ly/l;->j:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "transformPivotY"

    if-eqz v6, :cond_157

    .line 53
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_157
    iget v6, v3, Ly/l;->g:F

    move-object/from16 v18, v7

    iget v7, v5, Ly/l;->g:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "scaleX"

    if-eqz v6, :cond_168

    .line 55
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_168
    iget v6, v3, Ly/l;->h:F

    move-object/from16 v19, v7

    iget v7, v5, Ly/l;->h:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "scaleY"

    if-eqz v6, :cond_179

    .line 57
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_179
    iget v6, v3, Ly/l;->k:F

    move-object/from16 v20, v7

    iget v7, v5, Ly/l;->k:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "translationX"

    if-eqz v6, :cond_18a

    .line 59
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_18a
    iget v6, v3, Ly/l;->l:F

    move-object/from16 v21, v7

    iget v7, v5, Ly/l;->l:F

    invoke-static {v6, v7}, Ly/l;->b(FF)Z

    move-result v6

    const-string v7, "translationY"

    if-eqz v6, :cond_19b

    .line 61
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_19b
    iget v3, v3, Ly/l;->m:F

    iget v5, v5, Ly/l;->m:F

    invoke-static {v3, v5}, Ly/l;->b(FF)Z

    move-result v3

    const-string v6, "translationZ"

    if-eqz v3, :cond_1aa

    .line 63
    invoke-virtual {v15, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1aa
    iget-object v3, v11, Ly/m;->r:Ljava/util/ArrayList;

    if-eqz v3, :cond_2b5

    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v22, v5

    :goto_1b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly/d;

    move-object/from16 v23, v3

    .line 66
    instance-of v3, v5, Ly/h;

    if-eqz v3, :cond_232

    .line 67
    move-object v3, v5

    check-cast v3, Ly/h;

    .line 68
    new-instance v5, Ly/o;

    move-object/from16 v24, v9

    iget-object v9, v11, Ly/m;->d:Ly/o;

    move-object/from16 v25, v10

    iget-object v10, v11, Ly/m;->e:Ly/o;

    move-object/from16 v26, v5

    move-wide/from16 v27, v12

    move-object v12, v6

    move v6, v2

    move-object/from16 v13, p3

    move-object/from16 v29, p5

    move/from16 p3, v2

    move-object/from16 v34, v7

    move-object/from16 v30, v16

    move-object/from16 v31, v19

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v2, p4

    move-object/from16 p4, v0

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    move-object/from16 v0, v18

    move v7, v4

    move/from16 p5, v4

    move-object v4, v8

    move-object v8, v3

    move-object/from16 v12, v24

    move-object/from16 v0, v25

    invoke-direct/range {v5 .. v10}, Ly/o;-><init>(IILy/h;Ly/o;Ly/o;)V

    .line 69
    iget-object v5, v11, Ly/m;->q:Ljava/util/ArrayList;

    move-object/from16 v6, v26

    invoke-static {v5, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_223

    const-string v7, " KeyPath position \""

    .line 70
    invoke-static {v7}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 71
    iget v8, v6, Ly/o;->c:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "\" outside of range"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MotionController"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_223
    iget-object v7, v11, Ly/m;->q:Ljava/util/ArrayList;

    neg-int v5, v5

    const/4 v8, -0x1

    add-int/2addr v5, v8

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 73
    iget v3, v3, Ly/i;->d:I

    if-eq v3, v8, :cond_27a

    .line 74
    iput v3, v11, Ly/m;->c:I

    goto :goto_27a

    :cond_232
    move-object/from16 v29, p5

    move/from16 p5, v4

    move-object/from16 v34, v7

    move-object v4, v8

    move-wide/from16 v27, v12

    move-object/from16 v30, v16

    move-object/from16 v31, v19

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v13, p3

    move/from16 p3, v2

    move-object/from16 v16, v6

    move-object v12, v9

    move-object/from16 v2, p4

    move-object/from16 p4, v0

    move-object v0, v10

    .line 75
    instance-of v3, v5, Ly/f;

    if-eqz v3, :cond_257

    .line 76
    invoke-virtual {v5, v0}, Ly/d;->d(Ljava/util/HashSet;)V

    goto :goto_27a

    .line 77
    :cond_257
    instance-of v3, v5, Ly/j;

    if-eqz v3, :cond_25f

    .line 78
    invoke-virtual {v5, v14}, Ly/d;->d(Ljava/util/HashSet;)V

    goto :goto_27a

    .line 79
    :cond_25f
    instance-of v3, v5, Ly/k;

    if-eqz v3, :cond_274

    if-nez v22, :cond_26a

    .line 80
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :cond_26a
    move-object/from16 v3, v22

    .line 81
    check-cast v5, Ly/k;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v3

    goto :goto_27a

    .line 82
    :cond_274
    invoke-virtual {v5, v12}, Ly/d;->f(Ljava/util/HashMap;)V

    .line 83
    invoke-virtual {v5, v15}, Ly/d;->d(Ljava/util/HashSet;)V

    :cond_27a
    :goto_27a
    move-object v10, v0

    move-object v8, v4

    move-object v9, v12

    move-object/from16 v6, v16

    move-object/from16 v3, v23

    move-object/from16 v16, v30

    move-object/from16 v19, v31

    move-object/from16 v20, v32

    move-object/from16 v21, v33

    move-object/from16 v7, v34

    move-object/from16 v0, p4

    move/from16 v4, p5

    move-object/from16 p4, v2

    move-object/from16 p5, v29

    move/from16 v2, p3

    move-object/from16 p3, v13

    move-wide/from16 v12, v27

    goto/16 :goto_1b5

    :cond_29b
    move-object/from16 v2, p4

    move-object/from16 v29, p5

    move-object/from16 p4, v0

    move-object/from16 v34, v7

    move-object v4, v8

    move-object v0, v10

    move-wide/from16 v27, v12

    move-object/from16 v30, v16

    move-object/from16 v31, v19

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v13, p3

    move-object/from16 v16, v6

    move-object v12, v9

    goto :goto_2d0

    :cond_2b5
    move-object/from16 v2, p4

    move-object/from16 v29, p5

    move-object/from16 p4, v0

    move-object/from16 v34, v7

    move-object v4, v8

    move-object v0, v10

    move-wide/from16 v27, v12

    move-object/from16 v30, v16

    move-object/from16 v31, v19

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v13, p3

    move-object/from16 v16, v6

    move-object v12, v9

    const/16 v22, 0x0

    :goto_2d0
    move-object/from16 v3, v22

    if-eqz v3, :cond_2df

    const/4 v5, 0x0

    new-array v5, v5, [Ly/k;

    .line 84
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ly/k;

    iput-object v3, v11, Ly/m;->v:[Ly/k;

    .line 85
    :cond_2df
    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    const-string v5, ","

    const-string v6, "waveOffset"

    const-string v7, "CUSTOM,"

    const-string v10, "waveVariesBy"

    const/16 v19, 0x3

    if-nez v3, :cond_61d

    .line 86
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v11, Ly/m;->t:Ljava/util/HashMap;

    .line 87
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2fa
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Ljava/lang/String;

    .line 88
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_368

    .line 89
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 90
    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v22, v3

    aget-object v3, v20, v21

    move-object/from16 v25, v0

    .line 91
    iget-object v0, v11, Ly/m;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_325
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_34e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    check-cast v0, Ly/d;

    move-object/from16 v20, v15

    .line 92
    iget-object v15, v0, Ly/d;->c:Ljava/util/HashMap;

    if-nez v15, :cond_33c

    goto :goto_349

    .line 93
    :cond_33c
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v15, :cond_349

    .line 94
    iget v0, v0, Ly/d;->a:I

    invoke-virtual {v9, v0, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_349
    :goto_349
    move-object/from16 v15, v20

    move-object/from16 v0, v21

    goto :goto_325

    :cond_34e
    move-object/from16 v20, v15

    .line 95
    new-instance v0, Lx/c$b;

    invoke-direct {v0, v8, v9}, Lx/c$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object/from16 v3, v16

    move-object/from16 v21, v17

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v16, v6

    move-object v6, v0

    move-object/from16 v0, p4

    move-object/from16 p4, v10

    move-object/from16 v10, v34

    goto/16 :goto_57e

    :cond_368
    move-object/from16 v25, v0

    move-object/from16 v22, v3

    move-object/from16 v20, v15

    .line 96
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1814

    :goto_375
    move-object/from16 v0, p4

    move-object/from16 p4, v10

    move-object/from16 v3, v16

    move-object/from16 v21, v17

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v10, v34

    move-object/from16 v16, v6

    goto/16 :goto_4cc

    :sswitch_387
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38e

    goto :goto_375

    :cond_38e
    const/16 v0, 0xf

    goto :goto_3ba

    :sswitch_391
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_398

    goto :goto_375

    :cond_398
    const/16 v0, 0xe

    goto :goto_3ba

    :sswitch_39b
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a2

    goto :goto_375

    :cond_3a2
    const/16 v0, 0xd

    goto :goto_3ba

    :sswitch_3a5
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ac

    goto :goto_375

    :cond_3ac
    const/16 v0, 0xc

    goto :goto_3ba

    :sswitch_3af
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b8

    move-object/from16 v0, v18

    goto :goto_3c8

    :cond_3b8
    const/16 v0, 0xb

    :goto_3ba
    move v9, v0

    move-object/from16 v3, v17

    move-object/from16 v0, v18

    goto :goto_3f9

    :sswitch_3c0
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d4

    :goto_3c8
    move-object/from16 v18, v0

    move-object/from16 v3, v17

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v0, p4

    goto/16 :goto_45c

    :cond_3d4
    const/16 v3, 0xa

    move v9, v3

    move-object/from16 v3, v17

    goto :goto_3f9

    :sswitch_3da
    move-object/from16 v3, v17

    move-object/from16 v0, v18

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e5

    goto :goto_3f2

    :cond_3e5
    const/16 v9, 0x9

    goto :goto_3f9

    :sswitch_3e8
    move-object/from16 v3, v17

    move-object/from16 v0, v18

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f7

    :goto_3f2
    move-object/from16 v15, v31

    move-object/from16 v9, v32

    goto :goto_42f

    :cond_3f7
    const/16 v9, 0x8

    :goto_3f9
    move-object/from16 v18, v0

    move-object/from16 v21, v3

    move/from16 v17, v9

    move-object/from16 v3, v16

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    goto :goto_442

    :sswitch_406
    move-object/from16 v3, v17

    move-object/from16 v0, v18

    move-object/from16 v9, v32

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_415

    move-object/from16 v15, v31

    goto :goto_42f

    :cond_415
    const/4 v15, 0x7

    move-object/from16 v18, v0

    move-object/from16 v21, v3

    move/from16 v17, v15

    move-object/from16 v3, v16

    move-object/from16 v15, v31

    goto :goto_442

    :sswitch_421
    move-object/from16 v3, v17

    move-object/from16 v0, v18

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_43a

    :goto_42f
    move-object/from16 v18, v0

    move-object/from16 v21, v3

    move-object/from16 v3, v16

    move-object/from16 v0, p4

    move-object/from16 p4, v10

    goto :goto_462

    :cond_43a
    const/16 v17, 0x6

    move-object/from16 v18, v0

    move-object/from16 v21, v3

    move-object/from16 v3, v16

    :goto_442
    move-object/from16 v0, p4

    move-object/from16 v16, v6

    move-object/from16 p4, v10

    move-object/from16 v6, v29

    move-object/from16 v10, v34

    goto/16 :goto_514

    :sswitch_44e
    move-object/from16 v0, p4

    move-object/from16 v3, v17

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_465

    :goto_45c
    move-object/from16 v21, v3

    move-object/from16 p4, v10

    move-object/from16 v3, v16

    :goto_462
    move-object/from16 v10, v34

    goto :goto_4a8

    :cond_465
    const/16 v17, 0x5

    move-object/from16 v21, v3

    move-object/from16 p4, v10

    move-object/from16 v3, v16

    goto :goto_48e

    :sswitch_46e
    move-object/from16 v0, p4

    move-object/from16 v3, v16

    move-object/from16 v21, v17

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_488

    move-object/from16 v16, v6

    move-object/from16 p4, v10

    move-object/from16 v6, v29

    move-object/from16 v10, v34

    goto/16 :goto_512

    :cond_488
    const/16 v16, 0x4

    move-object/from16 p4, v10

    move/from16 v17, v16

    :goto_48e
    move-object/from16 v10, v34

    move-object/from16 v16, v6

    goto/16 :goto_4f3

    :sswitch_494
    move-object/from16 v0, p4

    move-object/from16 p4, v10

    move-object/from16 v3, v16

    move-object/from16 v21, v17

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v10, v34

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4ad

    :goto_4a8
    move-object/from16 v16, v6

    move-object/from16 v6, v30

    goto :goto_4ec

    :cond_4ad
    move-object/from16 v16, v6

    move/from16 v17, v19

    goto :goto_4f3

    :sswitch_4b2
    move-object/from16 v0, p4

    move-object/from16 p4, v10

    move-object/from16 v3, v16

    move-object/from16 v21, v17

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v10, v34

    move-object/from16 v16, v6

    move-object/from16 v6, v33

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4cf

    move-object/from16 v33, v6

    :goto_4cc
    move-object/from16 v6, v29

    goto :goto_512

    :cond_4cf
    const/16 v17, 0x2

    move-object/from16 v33, v6

    goto :goto_4f3

    :sswitch_4d4
    move-object/from16 v0, p4

    move-object/from16 p4, v10

    move-object/from16 v3, v16

    move-object/from16 v21, v17

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v10, v34

    move-object/from16 v16, v6

    move-object/from16 v6, v30

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4ef

    :goto_4ec
    move-object/from16 v30, v6

    goto :goto_4cc

    :cond_4ef
    const/16 v17, 0x1

    move-object/from16 v30, v6

    :goto_4f3
    move-object/from16 v6, v29

    goto :goto_514

    :sswitch_4f6
    move-object/from16 v0, p4

    move-object/from16 p4, v10

    move-object/from16 v3, v16

    move-object/from16 v21, v17

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v10, v34

    move-object/from16 v16, v6

    move-object/from16 v6, v29

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_50f

    goto :goto_512

    :cond_50f
    const/16 v17, 0x0

    goto :goto_514

    :goto_512
    const/16 v17, -0x1

    :goto_514
    packed-switch v17, :pswitch_data_1856

    const/16 v17, 0x0

    goto/16 :goto_57a

    .line 97
    :pswitch_51b  #0xf
    new-instance v17, Lx/c$a;

    invoke-direct/range {v17 .. v17}, Lx/c$a;-><init>()V

    goto :goto_57a

    .line 98
    :pswitch_521  #0xe
    new-instance v17, Lx/c$a;

    invoke-direct/range {v17 .. v17}, Lx/c$a;-><init>()V

    goto :goto_57a

    .line 99
    :pswitch_527  #0xd
    new-instance v17, Lx/c$d;

    invoke-direct/range {v17 .. v17}, Lx/c$d;-><init>()V

    goto :goto_57a

    .line 100
    :pswitch_52d  #0xc
    new-instance v17, Lx/c$c;

    invoke-direct/range {v17 .. v17}, Lx/c$c;-><init>()V

    goto :goto_57a

    .line 101
    :pswitch_533  #0xb
    new-instance v17, Lx/c$h;

    invoke-direct/range {v17 .. v17}, Lx/c$h;-><init>()V

    goto :goto_57a

    .line 102
    :pswitch_539  #0xa
    new-instance v17, Lx/c$f;

    invoke-direct/range {v17 .. v17}, Lx/c$f;-><init>()V

    goto :goto_57a

    .line 103
    :pswitch_53f  #0x9
    new-instance v17, Lx/c$e;

    invoke-direct/range {v17 .. v17}, Lx/c$e;-><init>()V

    goto :goto_57a

    .line 104
    :pswitch_545  #0x8
    new-instance v17, Lx/c$a;

    invoke-direct/range {v17 .. v17}, Lx/c$a;-><init>()V

    goto :goto_57a

    .line 105
    :pswitch_54b  #0x7
    new-instance v17, Lx/c$l;

    invoke-direct/range {v17 .. v17}, Lx/c$l;-><init>()V

    goto :goto_57a

    .line 106
    :pswitch_551  #0x6
    new-instance v17, Lx/c$k;

    invoke-direct/range {v17 .. v17}, Lx/c$k;-><init>()V

    goto :goto_57a

    .line 107
    :pswitch_557  #0x5
    new-instance v17, Lx/c$g;

    invoke-direct/range {v17 .. v17}, Lx/c$g;-><init>()V

    goto :goto_57a

    .line 108
    :pswitch_55d  #0x4
    new-instance v17, Lx/c$o;

    invoke-direct/range {v17 .. v17}, Lx/c$o;-><init>()V

    goto :goto_57a

    .line 109
    :pswitch_563  #0x3
    new-instance v17, Lx/c$n;

    invoke-direct/range {v17 .. v17}, Lx/c$n;-><init>()V

    goto :goto_57a

    .line 110
    :pswitch_569  #0x2
    new-instance v17, Lx/c$m;

    invoke-direct/range {v17 .. v17}, Lx/c$m;-><init>()V

    goto :goto_57a

    .line 111
    :pswitch_56f  #0x1
    new-instance v17, Lx/c$j;

    invoke-direct/range {v17 .. v17}, Lx/c$j;-><init>()V

    goto :goto_57a

    .line 112
    :pswitch_575  #0x0
    new-instance v17, Lx/c$i;

    invoke-direct/range {v17 .. v17}, Lx/c$i;-><init>()V

    :goto_57a
    move-object/from16 v29, v6

    move-object/from16 v6, v17

    :goto_57e
    if-nez v6, :cond_583

    move-object/from16 v34, v10

    goto :goto_58c

    .line 113
    :cond_583
    iput-object v8, v6, Lu/j;->e:Ljava/lang/String;

    move-object/from16 v34, v10

    .line 114
    iget-object v10, v11, Ly/m;->t:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_58c
    move-object/from16 v10, p4

    move-object/from16 p4, v0

    move-object/from16 v32, v9

    move-object/from16 v31, v15

    move-object/from16 v6, v16

    move-object/from16 v15, v20

    move-object/from16 v17, v21

    move-object/from16 v0, v25

    move-object/from16 v16, v3

    move-object/from16 v3, v22

    goto/16 :goto_2fa

    :cond_5a2
    move-object/from16 v25, v0

    move-object/from16 v20, v15

    move-object/from16 v3, v16

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v0, p4

    move-object/from16 v16, v6

    move-object/from16 p4, v10

    .line 115
    iget-object v6, v11, Ly/m;->r:Ljava/util/ArrayList;

    if-eqz v6, :cond_5d0

    .line 116
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5ba
    :goto_5ba
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly/d;

    .line 117
    instance-of v10, v8, Ly/e;

    if-eqz v10, :cond_5ba

    .line 118
    iget-object v10, v11, Ly/m;->t:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ly/d;->a(Ljava/util/HashMap;)V

    goto :goto_5ba

    .line 119
    :cond_5d0
    iget-object v6, v11, Ly/m;->f:Ly/l;

    iget-object v8, v11, Ly/m;->t:Ljava/util/HashMap;

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Ly/l;->a(Ljava/util/HashMap;I)V

    .line 120
    iget-object v6, v11, Ly/m;->g:Ly/l;

    iget-object v8, v11, Ly/m;->t:Ljava/util/HashMap;

    const/16 v10, 0x64

    invoke-virtual {v6, v8, v10}, Ly/l;->a(Ljava/util/HashMap;I)V

    .line 121
    iget-object v6, v11, Ly/m;->t:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5eb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_62d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 122
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60a

    .line 123
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_60a

    .line 124
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_60b

    :cond_60a
    const/4 v10, 0x0

    :goto_60b
    move-object/from16 v17, v6

    .line 125
    iget-object v6, v11, Ly/m;->t:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu/j;

    if-eqz v6, :cond_61a

    .line 126
    invoke-virtual {v6, v10}, Lu/j;->c(I)V

    :cond_61a
    move-object/from16 v6, v17

    goto :goto_5eb

    :cond_61d
    move-object/from16 v25, v0

    move-object/from16 v20, v15

    move-object/from16 v3, v16

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v0, p4

    move-object/from16 v16, v6

    move-object/from16 p4, v10

    .line 127
    :cond_62d
    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    const-string v8, "CUSTOM"

    if-nez v6, :cond_bbb

    .line 128
    iget-object v6, v11, Ly/m;->s:Ljava/util/HashMap;

    if-nez v6, :cond_640

    .line 129
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v11, Ly/m;->s:Ljava/util/HashMap;

    .line 130
    :cond_640
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_644
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7f6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 131
    iget-object v14, v11, Ly/m;->s:Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_659

    goto :goto_644

    .line 132
    :cond_659
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6b1

    .line 133
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 134
    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v21, v5

    aget-object v5, v17, v18

    move-object/from16 v17, v6

    .line 135
    iget-object v6, v11, Ly/m;->r:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_676
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_69f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v22, v6

    move-object/from16 v6, v18

    check-cast v6, Ly/d;

    move-object/from16 v18, v7

    .line 136
    iget-object v7, v6, Ly/d;->c:Ljava/util/HashMap;

    if-nez v7, :cond_68d

    goto :goto_69a

    .line 137
    :cond_68d
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v7, :cond_69a

    .line 138
    iget v6, v6, Ly/d;->a:I

    invoke-virtual {v14, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_69a
    :goto_69a
    move-object/from16 v7, v18

    move-object/from16 v6, v22

    goto :goto_676

    :cond_69f
    move-object/from16 v18, v7

    .line 139
    new-instance v5, Lx/d$b;

    invoke-direct {v5, v10, v14}, Lx/d$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    move-object/from16 v24, v12

    move-wide/from16 v6, v27

    move-object/from16 v14, v29

    move-object v12, v5

    move-object/from16 v5, v34

    goto/16 :goto_7da

    :cond_6b1
    move-object/from16 v21, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 140
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_187a

    :goto_6be
    move-object/from16 v14, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v33

    move-object/from16 v5, v34

    goto/16 :goto_778

    :sswitch_6c8
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6cf

    goto :goto_6be

    :cond_6cf
    const/16 v5, 0xb

    goto :goto_71e

    :sswitch_6d2
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d9

    goto :goto_6be

    :cond_6d9
    const/16 v5, 0xa

    goto :goto_71e

    :sswitch_6dc
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e3

    goto :goto_6be

    :cond_6e3
    const/16 v5, 0x9

    goto :goto_71e

    :sswitch_6e6
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6ed

    goto :goto_6be

    :cond_6ed
    const/16 v5, 0x8

    goto :goto_71e

    :sswitch_6f0
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f7

    goto :goto_6be

    :cond_6f7
    const/4 v5, 0x7

    goto :goto_70a

    :sswitch_6f9
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_700

    goto :goto_6be

    :cond_700
    const/4 v5, 0x6

    goto :goto_70a

    :sswitch_702
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_709

    goto :goto_6be

    :cond_709
    const/4 v5, 0x5

    :goto_70a
    move/from16 v22, v5

    move-object/from16 v14, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v33

    move-object/from16 v5, v34

    goto/16 :goto_77a

    :sswitch_716
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71d

    goto :goto_6be

    :cond_71d
    const/4 v5, 0x4

    :goto_71e
    move v6, v5

    move-object/from16 v5, v34

    goto :goto_733

    :sswitch_722
    move-object/from16 v5, v34

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_731

    move-object/from16 v14, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v33

    goto :goto_778

    :cond_731
    move/from16 v6, v19

    :goto_733
    move/from16 v22, v6

    move-object/from16 v14, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v33

    goto :goto_77a

    :sswitch_73c
    move-object/from16 v6, v33

    move-object/from16 v5, v34

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_749

    move-object/from16 v7, v30

    goto :goto_75d

    :cond_749
    const/4 v7, 0x2

    move/from16 v22, v7

    move-object/from16 v14, v29

    move-object/from16 v7, v30

    goto :goto_77a

    :sswitch_751
    move-object/from16 v7, v30

    move-object/from16 v6, v33

    move-object/from16 v5, v34

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_760

    :goto_75d
    move-object/from16 v14, v29

    goto :goto_778

    :cond_760
    const/4 v14, 0x1

    move/from16 v22, v14

    move-object/from16 v14, v29

    goto :goto_77a

    :sswitch_766
    move-object/from16 v14, v29

    move-object/from16 v7, v30

    move-object/from16 v6, v33

    move-object/from16 v5, v34

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_775

    goto :goto_778

    :cond_775
    const/16 v22, 0x0

    goto :goto_77a

    :goto_778
    const/16 v22, -0x1

    :goto_77a
    packed-switch v22, :pswitch_data_18ac

    move-object/from16 v33, v6

    move-object/from16 v30, v7

    move-object/from16 v24, v12

    move-wide/from16 v6, v27

    const/4 v12, 0x0

    goto :goto_7da

    .line 141
    :pswitch_787  #0xb
    new-instance v22, Lx/d$a;

    invoke-direct/range {v22 .. v22}, Lx/d$a;-><init>()V

    goto :goto_7ce

    .line 142
    :pswitch_78d  #0xa
    new-instance v22, Lx/d$d;

    invoke-direct/range {v22 .. v22}, Lx/d$d;-><init>()V

    goto :goto_7ce

    .line 143
    :pswitch_793  #0x9
    new-instance v22, Lx/d$c;

    invoke-direct/range {v22 .. v22}, Lx/d$c;-><init>()V

    goto :goto_7ce

    .line 144
    :pswitch_799  #0x8
    new-instance v22, Lx/d$f;

    invoke-direct/range {v22 .. v22}, Lx/d$f;-><init>()V

    goto :goto_7ce

    .line 145
    :pswitch_79f  #0x7
    new-instance v22, Lx/d$j;

    invoke-direct/range {v22 .. v22}, Lx/d$j;-><init>()V

    goto :goto_7ce

    .line 146
    :pswitch_7a5  #0x6
    new-instance v22, Lx/d$i;

    invoke-direct/range {v22 .. v22}, Lx/d$i;-><init>()V

    goto :goto_7ce

    .line 147
    :pswitch_7ab  #0x5
    new-instance v22, Lx/d$e;

    invoke-direct/range {v22 .. v22}, Lx/d$e;-><init>()V

    goto :goto_7ce

    .line 148
    :pswitch_7b1  #0x4
    new-instance v22, Lx/d$m;

    invoke-direct/range {v22 .. v22}, Lx/d$m;-><init>()V

    goto :goto_7ce

    .line 149
    :pswitch_7b7  #0x3
    new-instance v22, Lx/d$l;

    invoke-direct/range {v22 .. v22}, Lx/d$l;-><init>()V

    goto :goto_7ce

    .line 150
    :pswitch_7bd  #0x2
    new-instance v22, Lx/d$k;

    invoke-direct/range {v22 .. v22}, Lx/d$k;-><init>()V

    goto :goto_7ce

    .line 151
    :pswitch_7c3  #0x1
    new-instance v22, Lx/d$h;

    invoke-direct/range {v22 .. v22}, Lx/d$h;-><init>()V

    goto :goto_7ce

    .line 152
    :pswitch_7c9  #0x0
    new-instance v22, Lx/d$g;

    invoke-direct/range {v22 .. v22}, Lx/d$g;-><init>()V

    :goto_7ce
    move-object/from16 v33, v6

    move-object/from16 v30, v7

    move-object/from16 v24, v12

    move-object/from16 v12, v22

    move-wide/from16 v6, v27

    .line 153
    iput-wide v6, v12, Lu/l;->i:J

    :goto_7da
    if-nez v12, :cond_7df

    move-wide/from16 v27, v6

    goto :goto_7e8

    .line 154
    :cond_7df
    iput-object v10, v12, Lu/l;->f:Ljava/lang/String;

    move-wide/from16 v27, v6

    .line 155
    iget-object v6, v11, Ly/m;->s:Ljava/util/HashMap;

    invoke-virtual {v6, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7e8
    move-object/from16 v34, v5

    move-object/from16 v29, v14

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v5, v21

    move-object/from16 v12, v24

    goto/16 :goto_644

    :cond_7f6
    move-object/from16 v18, v7

    move-object/from16 v24, v12

    move-object/from16 v14, v29

    move-object/from16 v5, v34

    .line 156
    iget-object v6, v11, Ly/m;->r:Ljava/util/ArrayList;

    if-eqz v6, :cond_b7c

    .line 157
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_806
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly/d;

    .line 158
    instance-of v10, v7, Ly/j;

    if-eqz v10, :cond_b66

    .line 159
    check-cast v7, Ly/j;

    iget-object v10, v11, Ly/m;->s:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_825
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b66

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    check-cast v6, Ljava/lang/String;

    .line 161
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v34, v17

    check-cast v34, Lx/d;

    if-nez v34, :cond_84e

    move-object/from16 v23, v8

    move-object/from16 v17, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object/from16 v29, v14

    move-object v11, v7

    move-object/from16 v7, v33

    goto/16 :goto_b55

    .line 162
    :cond_84e
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8ab

    move-object/from16 v17, v10

    const/4 v10, 0x7

    .line 163
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 164
    iget-object v10, v7, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v6, :cond_8a5

    .line 165
    move-object/from16 v10, v34

    check-cast v10, Lx/d$b;

    move-object/from16 v22, v12

    iget v12, v7, Ly/d;->a:I

    move-object/from16 v23, v8

    iget v8, v7, Ly/j;->r:F

    move-object/from16 v26, v11

    iget v11, v7, Ly/j;->q:I

    move-object/from16 v29, v14

    iget v14, v7, Ly/j;->s:F

    move-object/from16 v27, v7

    .line 166
    iget-object v7, v10, Lx/d$b;->l:Landroid/util/SparseArray;

    invoke-virtual {v7, v12, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 167
    iget-object v6, v10, Lx/d$b;->m:Landroid/util/SparseArray;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/16 v28, 0x0

    aput v8, v7, v28

    const/4 v8, 0x1

    aput v14, v7, v8

    invoke-virtual {v6, v12, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 168
    iget v6, v10, Lu/l;->b:I

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v10, Lu/l;->b:I

    move-object/from16 v10, v17

    move-object/from16 v6, v21

    move-object/from16 v12, v22

    move-object/from16 v8, v23

    move-object/from16 v11, v26

    move-object/from16 v7, v27

    goto/16 :goto_b62

    :cond_8a5
    move-object/from16 v10, v17

    move-object/from16 v6, v21

    goto/16 :goto_825

    :cond_8ab
    move-object/from16 v27, v7

    move-object/from16 v23, v8

    move-object/from16 v17, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object/from16 v29, v14

    .line 169
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_18c8

    goto/16 :goto_91b

    :sswitch_8c0
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8c8

    goto/16 :goto_91b

    :cond_8c8
    const/16 v7, 0xb

    goto :goto_8fa

    :sswitch_8cb
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8d2

    goto :goto_91b

    :cond_8d2
    const/16 v7, 0xa

    goto :goto_8fa

    :sswitch_8d5
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8dc

    goto :goto_91b

    :cond_8dc
    const/16 v7, 0x9

    goto :goto_8fa

    :sswitch_8df
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8e6

    goto :goto_91b

    :cond_8e6
    const/16 v7, 0x8

    goto :goto_8fa

    :sswitch_8e9
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8f0

    goto :goto_91b

    :cond_8f0
    const/4 v7, 0x7

    goto :goto_8fa

    :sswitch_8f2
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8f9

    goto :goto_91b

    :cond_8f9
    const/4 v7, 0x6

    :goto_8fa
    move v11, v7

    move-object/from16 v10, v29

    move-object/from16 v8, v30

    move-object/from16 v7, v33

    goto/16 :goto_959

    :sswitch_903
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90a

    goto :goto_91b

    :cond_90a
    const/4 v7, 0x5

    goto :goto_8fa

    :sswitch_90c
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_913

    goto :goto_91b

    :cond_913
    const/4 v7, 0x4

    goto :goto_8fa

    :sswitch_915
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_922

    :goto_91b
    move-object/from16 v10, v29

    move-object/from16 v8, v30

    move-object/from16 v7, v33

    goto :goto_958

    :cond_922
    move/from16 v7, v19

    goto :goto_8fa

    :sswitch_925
    move-object/from16 v7, v33

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_930

    move-object/from16 v8, v30

    goto :goto_941

    :cond_930
    const/4 v8, 0x2

    move v11, v8

    move-object/from16 v10, v29

    move-object/from16 v8, v30

    goto :goto_959

    :sswitch_937
    move-object/from16 v8, v30

    move-object/from16 v7, v33

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_944

    :goto_941
    move-object/from16 v10, v29

    goto :goto_958

    :cond_944
    const/4 v10, 0x1

    move v11, v10

    move-object/from16 v10, v29

    goto :goto_959

    :sswitch_949
    move-object/from16 v10, v29

    move-object/from16 v8, v30

    move-object/from16 v7, v33

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_956

    goto :goto_958

    :cond_956
    const/4 v11, 0x0

    goto :goto_959

    :goto_958
    const/4 v11, -0x1

    :goto_959
    packed-switch v11, :pswitch_data_18fa

    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UNKNOWN addValues \""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "KeyTimeCycles"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b55

    :pswitch_97f  #0xb
    move-object/from16 v11, v27

    .line 171
    iget v6, v11, Ly/j;->e:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_9a6

    .line 172
    iget v6, v11, Ly/d;->a:I

    iget v12, v11, Ly/j;->e:F

    iget v14, v11, Ly/j;->r:F

    move-object/from16 v29, v10

    iget v10, v11, Ly/j;->q:I

    move-object/from16 v30, v8

    iget v8, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v10

    move/from16 v37, v12

    move/from16 v38, v14

    move/from16 v39, v8

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto/16 :goto_b55

    :cond_9a6
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    goto/16 :goto_b55

    :pswitch_9ac  #0xa
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 173
    iget v6, v11, Ly/j;->j:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 174
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->j:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto/16 :goto_b55

    :pswitch_9d3  #0x9
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 175
    iget v6, v11, Ly/j;->f:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 176
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->f:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto/16 :goto_b55

    :pswitch_9fa  #0x8
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 177
    iget v6, v11, Ly/j;->g:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 178
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->g:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto/16 :goto_b55

    :pswitch_a21  #0x7
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 179
    iget v6, v11, Ly/j;->l:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 180
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->l:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto/16 :goto_b55

    :pswitch_a48  #0x6
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 181
    iget v6, v11, Ly/j;->k:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 182
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->k:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto/16 :goto_b55

    :pswitch_a6f  #0x5
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 183
    iget v6, v11, Ly/j;->p:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 184
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->p:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto/16 :goto_b55

    :pswitch_a96  #0x4
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 185
    iget v6, v11, Ly/j;->o:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 186
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->o:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto/16 :goto_b55

    :pswitch_abd  #0x3
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 187
    iget v6, v11, Ly/j;->n:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 188
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->n:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto/16 :goto_b55

    :pswitch_ae4  #0x2
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 189
    iget v6, v11, Ly/j;->m:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 190
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->m:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto :goto_b55

    :pswitch_b0a  #0x1
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 191
    iget v6, v11, Ly/j;->i:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 192
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->i:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    goto :goto_b55

    :pswitch_b30  #0x0
    move-object/from16 v30, v8

    move-object/from16 v29, v10

    move-object/from16 v11, v27

    .line 193
    iget v6, v11, Ly/j;->h:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_b55

    .line 194
    iget v6, v11, Ly/d;->a:I

    iget v8, v11, Ly/j;->h:F

    iget v10, v11, Ly/j;->r:F

    iget v12, v11, Ly/j;->q:I

    iget v14, v11, Ly/j;->s:F

    move/from16 v35, v6

    move/from16 v36, v12

    move/from16 v37, v8

    move/from16 v38, v10

    move/from16 v39, v14

    invoke-virtual/range {v34 .. v39}, Lu/l;->b(IIFFF)V

    :cond_b55
    :goto_b55
    move-object/from16 v33, v7

    move-object v7, v11

    move-object/from16 v10, v17

    move-object/from16 v6, v21

    move-object/from16 v12, v22

    move-object/from16 v8, v23

    move-object/from16 v11, v26

    :goto_b62
    move-object/from16 v14, v29

    goto/16 :goto_825

    :cond_b66
    move-object/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v26, v11

    move-object/from16 v29, v14

    move-object/from16 v7, v33

    move-object/from16 v33, v7

    move-object/from16 v6, v21

    move-object/from16 v8, v23

    move-object/from16 v11, v26

    move-object/from16 v14, v29

    goto/16 :goto_806

    :cond_b7c
    move-object/from16 v23, v8

    move-object/from16 v29, v14

    move-object/from16 v7, v33

    move-object v6, v11

    .line 195
    iget-object v8, v6, Ly/m;->s:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b8d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_bc4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v11, v24

    .line 196
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_bac

    .line 197
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_bad

    :cond_bac
    const/4 v12, 0x0

    .line 198
    :goto_bad
    iget-object v14, v6, Ly/m;->s:Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lx/d;

    invoke-virtual {v10, v12}, Lu/l;->c(I)V

    move-object/from16 v24, v11

    goto :goto_b8d

    :cond_bbb
    move-object/from16 v18, v7

    move-object/from16 v23, v8

    move-object v6, v11

    move-object/from16 v7, v33

    move-object/from16 v5, v34

    .line 199
    :cond_bc4
    iget-object v8, v6, Ly/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    new-array v10, v8, [Ly/o;

    .line 200
    iget-object v11, v6, Ly/m;->d:Ly/o;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    add-int/lit8 v11, v8, -0x1

    .line 201
    iget-object v14, v6, Ly/m;->e:Ly/o;

    aput-object v14, v10, v11

    .line 202
    iget-object v11, v6, Ly/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_be8

    iget v11, v6, Ly/m;->c:I

    const/4 v14, -0x1

    if-ne v11, v14, :cond_be8

    .line 203
    iput v12, v6, Ly/m;->c:I

    .line 204
    :cond_be8
    iget-object v11, v6, Ly/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x1

    :goto_bef
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c02

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ly/o;

    add-int/lit8 v17, v12, 0x1

    .line 205
    aput-object v14, v10, v12

    move/from16 v12, v17

    goto :goto_bef

    .line 206
    :cond_c02
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 207
    iget-object v12, v6, Ly/m;->e:Ly/o;

    iget-object v12, v12, Ly/o;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c55

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v17, v12

    .line 208
    iget-object v12, v6, Ly/m;->d:Ly/o;

    iget-object v12, v12, Ly/o;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v14}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c4a

    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v7

    move-object/from16 v7, v18

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v7, v20

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c4e

    .line 210
    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c4e

    :cond_c4a
    move-object/from16 v33, v7

    move-object/from16 v7, v20

    :cond_c4e
    :goto_c4e
    move-object/from16 v20, v7

    move-object/from16 v12, v17

    move-object/from16 v7, v33

    goto :goto_c13

    :cond_c55
    move-object/from16 v33, v7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    .line 211
    invoke-virtual {v11, v7}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v6, Ly/m;->n:[Ljava/lang/String;

    .line 212
    array-length v7, v7

    new-array v7, v7, [I

    iput-object v7, v6, Ly/m;->o:[I

    const/4 v7, 0x0

    .line 213
    :goto_c68
    iget-object v11, v6, Ly/m;->n:[Ljava/lang/String;

    array-length v12, v11

    if-ge v7, v12, :cond_c9f

    .line 214
    aget-object v11, v11, v7

    .line 215
    iget-object v12, v6, Ly/m;->o:[I

    const/4 v14, 0x0

    aput v14, v12, v7

    const/4 v12, 0x0

    :goto_c75
    if-ge v12, v8, :cond_c9c

    .line 216
    aget-object v14, v10, v12

    iget-object v14, v14, Ly/o;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v11}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c99

    .line 217
    aget-object v14, v10, v12

    iget-object v14, v14, Ly/o;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v14, :cond_c99

    .line 218
    iget-object v11, v6, Ly/m;->o:[I

    aget v12, v11, v7

    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    move-result v14

    add-int/2addr v14, v12

    aput v14, v11, v7

    goto :goto_c9c

    :cond_c99
    add-int/lit8 v12, v12, 0x1

    goto :goto_c75

    :cond_c9c
    :goto_c9c
    add-int/lit8 v7, v7, 0x1

    goto :goto_c68

    :cond_c9f
    const/4 v7, 0x0

    .line 219
    aget-object v7, v10, v7

    iget v7, v7, Ly/o;->i:I

    const/4 v12, -0x1

    if-eq v7, v12, :cond_ca9

    const/4 v7, 0x1

    goto :goto_caa

    :cond_ca9
    const/4 v7, 0x0

    .line 220
    :goto_caa
    array-length v11, v11

    add-int/lit8 v11, v11, 0x12

    new-array v12, v11, [Z

    const/4 v14, 0x1

    :goto_cb0
    if-ge v14, v8, :cond_d20

    move-object/from16 v34, v5

    .line 221
    aget-object v5, v10, v14

    add-int/lit8 v17, v14, -0x1

    move-object/from16 v18, v3

    aget-object v3, v10, v17

    move-object/from16 v17, v0

    .line 222
    iget v0, v5, Ly/o;->d:F

    move-object/from16 v31, v15

    .line 223
    iget v15, v3, Ly/o;->d:F

    invoke-static {v0, v15}, Ly/o;->a(FF)Z

    move-result v0

    .line 224
    iget v15, v5, Ly/o;->e:F

    move-object/from16 v32, v9

    iget v9, v3, Ly/o;->e:F

    invoke-static {v15, v9}, Ly/o;->a(FF)Z

    move-result v9

    const/4 v15, 0x0

    .line 225
    aget-boolean v15, v12, v15

    move-object/from16 v20, v2

    iget v2, v5, Ly/o;->c:F

    move-object/from16 v21, v13

    iget v13, v3, Ly/o;->c:F

    invoke-static {v2, v13}, Ly/o;->a(FF)Z

    move-result v2

    or-int/2addr v2, v15

    const/4 v13, 0x0

    aput-boolean v2, v12, v13

    const/4 v2, 0x1

    .line 226
    aget-boolean v13, v12, v2

    or-int/2addr v0, v9

    or-int/2addr v0, v7

    or-int v9, v13, v0

    aput-boolean v9, v12, v2

    const/4 v2, 0x2

    .line 227
    aget-boolean v9, v12, v2

    or-int/2addr v0, v9

    aput-boolean v0, v12, v2

    .line 228
    aget-boolean v0, v12, v19

    iget v2, v5, Ly/o;->f:F

    iget v9, v3, Ly/o;->f:F

    invoke-static {v2, v9}, Ly/o;->a(FF)Z

    move-result v2

    or-int/2addr v0, v2

    aput-boolean v0, v12, v19

    const/4 v0, 0x4

    .line 229
    aget-boolean v2, v12, v0

    iget v5, v5, Ly/o;->g:F

    iget v3, v3, Ly/o;->g:F

    invoke-static {v5, v3}, Ly/o;->a(FF)Z

    move-result v3

    or-int/2addr v2, v3

    aput-boolean v2, v12, v0

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v20

    move-object/from16 v13, v21

    move-object/from16 v15, v31

    move-object/from16 v9, v32

    move-object/from16 v5, v34

    goto :goto_cb0

    :cond_d20
    move-object/from16 v17, v0

    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move-object/from16 v34, v5

    move-object/from16 v32, v9

    move-object/from16 v21, v13

    move-object/from16 v31, v15

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_d30
    if-ge v0, v11, :cond_d3b

    .line 230
    aget-boolean v3, v12, v0

    if-eqz v3, :cond_d38

    add-int/lit8 v2, v2, 0x1

    :cond_d38
    add-int/lit8 v0, v0, 0x1

    goto :goto_d30

    .line 231
    :cond_d3b
    new-array v0, v2, [I

    iput-object v0, v6, Ly/m;->k:[I

    const/4 v0, 0x2

    .line 232
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 233
    new-array v2, v0, [D

    iput-object v2, v6, Ly/m;->l:[D

    .line 234
    new-array v0, v0, [D

    iput-object v0, v6, Ly/m;->m:[D

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_d4e
    if-ge v0, v11, :cond_d5e

    .line 235
    aget-boolean v3, v12, v0

    if-eqz v3, :cond_d5b

    .line 236
    iget-object v3, v6, Ly/m;->k:[I

    add-int/lit8 v5, v2, 0x1

    aput v0, v3, v2

    move v2, v5

    :cond_d5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d4e

    .line 237
    :cond_d5e
    iget-object v0, v6, Ly/m;->k:[I

    array-length v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    aput v8, v2, v0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 238
    new-array v2, v8, [D

    const/4 v3, 0x0

    :goto_d75
    if-ge v3, v8, :cond_dbd

    .line 239
    aget-object v5, v10, v3

    aget-object v7, v0, v3

    iget-object v9, v6, Ly/m;->k:[I

    const/4 v11, 0x6

    new-array v11, v11, [F

    .line 240
    iget v12, v5, Ly/o;->c:F

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 241
    iget v12, v5, Ly/o;->d:F

    const/4 v13, 0x1

    aput v12, v11, v13

    iget v12, v5, Ly/o;->e:F

    const/4 v13, 0x2

    aput v12, v11, v13

    iget v12, v5, Ly/o;->f:F

    aput v12, v11, v19

    iget v12, v5, Ly/o;->g:F

    const/4 v13, 0x4

    aput v12, v11, v13

    iget v5, v5, Ly/o;->h:F

    const/4 v12, 0x5

    aput v5, v11, v12

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 242
    :goto_d9f
    array-length v13, v9

    if-ge v5, v13, :cond_db3

    .line 243
    aget v13, v9, v5

    const/4 v14, 0x6

    if-ge v13, v14, :cond_db0

    add-int/lit8 v14, v12, 0x1

    .line 244
    aget v13, v11, v13

    move v15, v14

    float-to-double v13, v13

    aput-wide v13, v7, v12

    move v12, v15

    :cond_db0
    add-int/lit8 v5, v5, 0x1

    goto :goto_d9f

    .line 245
    :cond_db3
    aget-object v5, v10, v3

    iget v5, v5, Ly/o;->b:F

    float-to-double v11, v5

    aput-wide v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d75

    :cond_dbd
    const/4 v3, 0x0

    .line 246
    :goto_dbe
    iget-object v5, v6, Ly/m;->k:[I

    array-length v7, v5

    if-ge v3, v7, :cond_df3

    .line 247
    aget v5, v5, v3

    .line 248
    sget-object v7, Ly/o;->n:[Ljava/lang/String;

    const/4 v9, 0x6

    if-ge v5, v9, :cond_df0

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Ly/m;->k:[I

    aget v9, v9, v3

    aget-object v7, v7, v9

    const-string v9, " ["

    .line 250
    invoke-static {v5, v7, v9}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :goto_ddc
    if-ge v7, v8, :cond_df0

    .line 251
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 252
    aget-object v9, v0, v7

    aget-wide v11, v9, v3

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_ddc

    :cond_df0
    add-int/lit8 v3, v3, 0x1

    goto :goto_dbe

    .line 253
    :cond_df3
    iget-object v3, v6, Ly/m;->n:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lu/b;

    iput-object v3, v6, Ly/m;->h:[Lu/b;

    const/4 v3, 0x0

    .line 254
    :goto_dfd
    iget-object v5, v6, Ly/m;->n:[Ljava/lang/String;

    array-length v7, v5

    if-ge v3, v7, :cond_ebf

    .line 255
    aget-object v5, v5, v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_e08
    if-ge v7, v8, :cond_ea3

    .line 256
    aget-object v13, v10, v7

    .line 257
    iget-object v13, v13, Ly/o;->k:Ljava/util/LinkedHashMap;

    .line 258
    invoke-virtual {v13, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e97

    if-nez v12, :cond_e3b

    .line 259
    new-array v11, v8, [D

    .line 260
    aget-object v12, v10, v7

    .line 261
    iget-object v12, v12, Ly/o;->k:Ljava/util/LinkedHashMap;

    .line 262
    invoke-virtual {v12, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v12, :cond_e26

    const/4 v12, 0x0

    goto :goto_e2a

    .line 263
    :cond_e26
    invoke-virtual {v12}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    move-result v12

    :goto_e2a
    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x1

    aput v12, v13, v14

    const/4 v12, 0x0

    aput v8, v13, v12

    .line 264
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[D

    .line 265
    :cond_e3b
    aget-object v13, v10, v7

    iget v14, v13, Ly/o;->b:F

    float-to-double v14, v14

    aput-wide v14, v11, v9

    .line 266
    aget-object v14, v12, v9

    .line 267
    iget-object v13, v13, Ly/o;->k:Ljava/util/LinkedHashMap;

    .line 268
    invoke-virtual {v13, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-nez v13, :cond_e56

    move-object/from16 v28, v4

    move-object/from16 v22, v5

    move-object v15, v11

    move-object/from16 v24, v12

    goto :goto_e91

    .line 269
    :cond_e56
    invoke-virtual {v13}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    move-result v15

    move-object/from16 v22, v5

    const/4 v5, 0x1

    if-ne v15, v5, :cond_e6d

    .line 270
    invoke-virtual {v13}, Landroidx/constraintlayout/widget/ConstraintAttribute;->a()F

    move-result v5

    move-object v15, v11

    move-object/from16 v24, v12

    float-to-double v11, v5

    const/4 v5, 0x0

    aput-wide v11, v14, v5

    :cond_e6a
    move-object/from16 v28, v4

    goto :goto_e91

    :cond_e6d
    move-object v15, v11

    move-object/from16 v24, v12

    .line 271
    invoke-virtual {v13}, Landroidx/constraintlayout/widget/ConstraintAttribute;->c()I

    move-result v5

    .line 272
    new-array v11, v5, [F

    .line 273
    invoke-virtual {v13, v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->b([F)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e7b
    if-ge v12, v5, :cond_e6a

    add-int/lit8 v26, v13, 0x1

    move/from16 v27, v5

    .line 274
    aget v5, v11, v12

    move-object/from16 v28, v4

    float-to-double v4, v5

    aput-wide v4, v14, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v26

    move/from16 v5, v27

    move-object/from16 v4, v28

    goto :goto_e7b

    :goto_e91
    add-int/lit8 v9, v9, 0x1

    move-object v11, v15

    move-object/from16 v12, v24

    goto :goto_e9b

    :cond_e97
    move-object/from16 v28, v4

    move-object/from16 v22, v5

    :goto_e9b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v22

    move-object/from16 v4, v28

    goto/16 :goto_e08

    :cond_ea3
    move-object/from16 v28, v4

    .line 275
    invoke-static {v11, v9}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v4

    .line 276
    invoke-static {v12, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 277
    iget-object v7, v6, Ly/m;->h:[Lu/b;

    add-int/lit8 v3, v3, 0x1

    iget v9, v6, Ly/m;->c:I

    invoke-static {v9, v4, v5}, Lu/b;->a(I[D[[D)Lu/b;

    move-result-object v4

    aput-object v4, v7, v3

    move-object/from16 v4, v28

    goto/16 :goto_dfd

    :cond_ebf
    move-object/from16 v28, v4

    .line 278
    iget-object v3, v6, Ly/m;->h:[Lu/b;

    iget v4, v6, Ly/m;->c:I

    invoke-static {v4, v2, v0}, Lu/b;->a(I[D[[D)Lu/b;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v3, v2

    .line 279
    aget-object v0, v10, v2

    iget v0, v0, Ly/o;->i:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_f0d

    .line 280
    new-array v0, v8, [I

    .line 281
    new-array v3, v8, [D

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v7, 0x1

    aput v4, v5, v7

    aput v8, v5, v2

    .line 282
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v4, 0x0

    :goto_ee8
    if-ge v4, v8, :cond_f06

    .line 283
    aget-object v5, v10, v4

    iget v7, v5, Ly/o;->i:I

    aput v7, v0, v4

    .line 284
    iget v7, v5, Ly/o;->b:F

    float-to-double v11, v7

    aput-wide v11, v3, v4

    .line 285
    aget-object v7, v2, v4

    iget v9, v5, Ly/o;->d:F

    float-to-double v11, v9

    const/4 v9, 0x0

    aput-wide v11, v7, v9

    .line 286
    iget v5, v5, Ly/o;->e:F

    float-to-double v11, v5

    const/4 v5, 0x1

    aput-wide v11, v7, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_ee8

    .line 287
    :cond_f06
    new-instance v4, Lu/a;

    invoke-direct {v4, v0, v3, v2}, Lu/a;-><init>([I[D[[D)V

    .line 288
    iput-object v4, v6, Ly/m;->i:Lu/a;

    .line 289
    :cond_f0d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Ly/m;->u:Ljava/util/HashMap;

    .line 290
    iget-object v0, v6, Ly/m;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_16e8

    .line 291
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v2, 0x7fc00000  # Float.NaN

    :goto_f1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1303

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v4, v23

    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f52

    .line 293
    new-instance v5, Lx/b$b;

    invoke-direct {v5}, Lx/b$b;-><init>()V

    move-object v10, v5

    move-object/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v15, v34

    move-object/from16 v17, p4

    move-object/from16 p4, v0

    move-object/from16 v0, v33

    goto/16 :goto_11bb

    .line 294
    :cond_f52
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1916

    move-object/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    :goto_f65
    move-object/from16 v10, v29

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v15, v34

    move-object/from16 v17, p4

    move-object/from16 p4, v0

    :goto_f71
    move-object/from16 v0, v33

    goto/16 :goto_115b

    :sswitch_f75
    move-object/from16 v5, v16

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f80

    move-object/from16 v7, v28

    goto :goto_faa

    :cond_f80
    const/16 v7, 0xd

    move-object/from16 v10, p4

    move/from16 v16, v7

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    goto/16 :goto_fea

    :sswitch_f92
    move-object/from16 v5, v16

    move-object/from16 v7, v28

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f9d

    goto :goto_faa

    :cond_f9d
    const/16 v8, 0xc

    goto :goto_fb5

    :sswitch_fa0
    move-object/from16 v5, v16

    move-object/from16 v7, v28

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_fb3

    :goto_faa
    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    goto :goto_f65

    :cond_fb3
    const/16 v8, 0xb

    :goto_fb5
    move/from16 v16, v8

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v10, v29

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v15, v34

    move-object/from16 v17, p4

    move-object/from16 p4, v0

    goto/16 :goto_10e1

    :sswitch_fcd
    move-object/from16 v5, v16

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_fde

    move-object/from16 v10, p4

    move-object/from16 v9, v20

    goto :goto_1016

    :cond_fde
    const/16 v9, 0xa

    move-object/from16 v10, p4

    move/from16 v16, v9

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    :goto_fea
    move-object/from16 v12, v31

    move-object/from16 v11, v32

    goto/16 :goto_10b4

    :sswitch_ff0
    move-object/from16 v5, v16

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1001

    move-object/from16 v10, p4

    goto :goto_1016

    :cond_1001
    move-object/from16 v10, p4

    const/16 v11, 0x9

    goto :goto_1028

    :sswitch_1006
    move-object/from16 v10, p4

    move-object/from16 v5, v16

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1026

    :goto_1016
    move-object/from16 p4, v0

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v0, v33

    move-object/from16 v15, v34

    goto/16 :goto_1103

    :cond_1026
    const/16 v11, 0x8

    :goto_1028
    move v13, v11

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    goto :goto_1060

    :sswitch_102e
    move-object/from16 v10, p4

    move-object/from16 v5, v16

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    move-object/from16 v11, v32

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1043

    move-object/from16 v12, v31

    goto :goto_105c

    :cond_1043
    const/4 v12, 0x7

    move v13, v12

    move-object/from16 v12, v31

    goto :goto_1060

    :sswitch_1048
    move-object/from16 v10, p4

    move-object/from16 v5, v16

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_105f

    :goto_105c
    move-object/from16 v13, v17

    goto :goto_1084

    :cond_105f
    const/4 v13, 0x6

    :goto_1060
    move-object/from16 p4, v0

    move/from16 v16, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v0, v33

    move-object/from16 v15, v34

    goto/16 :goto_1108

    :sswitch_106e
    move-object/from16 v10, p4

    move-object/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1087

    :goto_1084
    move-object/from16 v14, v18

    goto :goto_10a5

    :cond_1087
    const/4 v14, 0x5

    move/from16 v16, v14

    move-object/from16 v14, v18

    goto :goto_10b4

    :sswitch_108d
    move-object/from16 v10, p4

    move-object/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10b1

    :goto_10a5
    move-object/from16 p4, v0

    move-object/from16 v17, v10

    move-object/from16 v10, v29

    move-object/from16 v0, v33

    move-object/from16 v15, v34

    goto/16 :goto_115b

    :cond_10b1
    const/4 v15, 0x4

    move/from16 v16, v15

    :goto_10b4
    move-object/from16 v15, v34

    goto :goto_10db

    :sswitch_10b7
    move-object/from16 v10, p4

    move-object/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v15, v34

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_10d9

    move-object/from16 p4, v0

    move-object/from16 v17, v10

    move-object/from16 v10, v29

    goto/16 :goto_f71

    :cond_10d9
    move/from16 v16, v19

    :goto_10db
    move-object/from16 p4, v0

    move-object/from16 v17, v10

    move-object/from16 v10, v29

    :goto_10e1
    move-object/from16 v0, v33

    goto/16 :goto_115d

    :sswitch_10e5
    move-object/from16 v10, p4

    move-object/from16 p4, v0

    move-object/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v0, v33

    move-object/from16 v15, v34

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1106

    :goto_1103
    move-object/from16 v17, v10

    goto :goto_112d

    :cond_1106
    const/16 v16, 0x2

    :goto_1108
    move-object/from16 v17, v10

    goto :goto_1134

    :sswitch_110b
    move-object/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    move-object/from16 v10, v30

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v15, v34

    move-object/from16 v17, p4

    move-object/from16 p4, v0

    move-object/from16 v0, v33

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1130

    move-object/from16 v30, v10

    :goto_112d
    move-object/from16 v10, v29

    goto :goto_115b

    :cond_1130
    const/16 v16, 0x1

    move-object/from16 v30, v10

    :goto_1134
    move-object/from16 v10, v29

    goto :goto_115d

    :sswitch_1137
    move-object/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v7, v28

    move-object/from16 v10, v29

    move-object/from16 v12, v31

    move-object/from16 v11, v32

    move-object/from16 v15, v34

    move-object/from16 v17, p4

    move-object/from16 p4, v0

    move-object/from16 v0, v33

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1158

    goto :goto_115b

    :cond_1158
    const/16 v16, 0x0

    goto :goto_115d

    :goto_115b
    const/16 v16, -0x1

    :goto_115d
    packed-switch v16, :pswitch_data_1950

    const/16 v16, 0x0

    :goto_1162
    move-object/from16 v29, v10

    move-object/from16 v10, v16

    goto :goto_11bb

    .line 295
    :pswitch_1167  #0xd
    new-instance v16, Lx/b$a;

    invoke-direct/range {v16 .. v16}, Lx/b$a;-><init>()V

    goto :goto_1162

    .line 296
    :pswitch_116d  #0xc
    new-instance v16, Lx/b$a;

    invoke-direct/range {v16 .. v16}, Lx/b$a;-><init>()V

    goto :goto_1162

    .line 297
    :pswitch_1173  #0xb
    new-instance v16, Lx/b$d;

    invoke-direct/range {v16 .. v16}, Lx/b$d;-><init>()V

    goto :goto_1162

    .line 298
    :pswitch_1179  #0xa
    new-instance v16, Lx/b$c;

    invoke-direct/range {v16 .. v16}, Lx/b$c;-><init>()V

    goto :goto_1162

    .line 299
    :pswitch_117f  #0x9
    new-instance v16, Lx/b$f;

    invoke-direct/range {v16 .. v16}, Lx/b$f;-><init>()V

    goto :goto_1162

    .line 300
    :pswitch_1185  #0x8
    new-instance v16, Lx/b$a;

    invoke-direct/range {v16 .. v16}, Lx/b$a;-><init>()V

    goto :goto_1162

    .line 301
    :pswitch_118b  #0x7
    new-instance v16, Lx/b$j;

    invoke-direct/range {v16 .. v16}, Lx/b$j;-><init>()V

    goto :goto_1162

    .line 302
    :pswitch_1191  #0x6
    new-instance v16, Lx/b$i;

    invoke-direct/range {v16 .. v16}, Lx/b$i;-><init>()V

    goto :goto_1162

    .line 303
    :pswitch_1197  #0x5
    new-instance v16, Lx/b$e;

    invoke-direct/range {v16 .. v16}, Lx/b$e;-><init>()V

    goto :goto_1162

    .line 304
    :pswitch_119d  #0x4
    new-instance v16, Lx/b$m;

    invoke-direct/range {v16 .. v16}, Lx/b$m;-><init>()V

    goto :goto_1162

    .line 305
    :pswitch_11a3  #0x3
    new-instance v16, Lx/b$l;

    invoke-direct/range {v16 .. v16}, Lx/b$l;-><init>()V

    goto :goto_1162

    .line 306
    :pswitch_11a9  #0x2
    new-instance v16, Lx/b$k;

    invoke-direct/range {v16 .. v16}, Lx/b$k;-><init>()V

    goto :goto_1162

    .line 307
    :pswitch_11af  #0x1
    new-instance v16, Lx/b$h;

    invoke-direct/range {v16 .. v16}, Lx/b$h;-><init>()V

    goto :goto_1162

    .line 308
    :pswitch_11b5  #0x0
    new-instance v16, Lx/b$g;

    invoke-direct/range {v16 .. v16}, Lx/b$g;-><init>()V

    goto :goto_1162

    :goto_11bb
    if-nez v10, :cond_11d9

    move-object/from16 v33, v0

    move-object/from16 v23, v4

    move-object/from16 v16, v5

    move-object/from16 v28, v7

    move-object/from16 v21, v8

    move-object/from16 v20, v9

    move-object/from16 v32, v11

    move-object/from16 v31, v12

    move-object/from16 v18, v14

    move-object/from16 v34, v15

    move-object/from16 v0, p4

    move-object/from16 p4, v17

    move-object/from16 v17, v13

    goto/16 :goto_f1e

    :cond_11d9
    move-object/from16 v33, v0

    .line 309
    iget v0, v10, Lu/e;->e:I

    move-object/from16 v34, v15

    const/4 v15, 0x1

    if-ne v0, v15, :cond_11e4

    const/4 v0, 0x1

    goto :goto_11e5

    :cond_11e4
    const/4 v0, 0x0

    :goto_11e5
    if-eqz v0, :cond_12da

    .line 310
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_12da

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/16 v2, 0x63

    int-to-float v2, v2

    const/high16 v15, 0x3f800000  # 1.0f

    div-float/2addr v15, v2

    const-wide/16 v20, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x64

    const/16 v18, 0x0

    move-wide/from16 v27, v20

    move-wide/from16 v31, v27

    move/from16 v40, v18

    move-object/from16 v18, v13

    move/from16 v13, v40

    move/from16 v41, v16

    move-object/from16 v16, v14

    move/from16 v14, v41

    :goto_120d
    if-ge v2, v14, :cond_12d0

    int-to-float v14, v2

    mul-float/2addr v14, v15

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    float-to-double v11, v14

    move-wide/from16 v20, v11

    .line 311
    iget-object v11, v6, Ly/m;->d:Ly/o;

    iget-object v11, v11, Ly/o;->a:Lu/c;

    .line 312
    iget-object v12, v6, Ly/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/high16 v22, 0x7fc00000  # Float.NaN

    const/16 v23, 0x0

    :goto_1226
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1258

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v12

    move-object/from16 v12, v24

    check-cast v12, Ly/o;

    move/from16 v37, v15

    .line 313
    iget-object v15, v12, Ly/o;->a:Lu/c;

    if-eqz v15, :cond_1253

    move-object/from16 v24, v15

    .line 314
    iget v15, v12, Ly/o;->b:F

    cmpg-float v26, v15, v14

    if-gez v26, :cond_1249

    move/from16 v23, v15

    move-object/from16 v11, v24

    goto :goto_1253

    .line 315
    :cond_1249
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_1253

    .line 316
    iget v12, v12, Ly/o;->b:F

    move/from16 v22, v12

    :cond_1253
    :goto_1253
    move-object/from16 v12, v25

    move/from16 v15, v37

    goto :goto_1226

    :cond_1258
    move/from16 v37, v15

    if-eqz v11, :cond_1276

    .line 317
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_1264

    const/high16 v22, 0x3f800000  # 1.0f

    :cond_1264
    sub-float v14, v14, v23

    sub-float v22, v22, v23

    div-float v14, v14, v22

    float-to-double v14, v14

    .line 318
    invoke-virtual {v11, v14, v15}, Lu/c;->a(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v11, v11, v22

    add-float v11, v11, v23

    float-to-double v11, v11

    goto :goto_1278

    :cond_1276
    move-wide/from16 v11, v20

    .line 319
    :goto_1278
    iget-object v14, v6, Ly/m;->h:[Lu/b;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget-object v15, v6, Ly/m;->l:[D

    invoke-virtual {v14, v11, v12, v15}, Lu/b;->c(D[D)V

    .line 320
    iget-object v14, v6, Ly/m;->d:Ly/o;

    iget-object v15, v6, Ly/m;->k:[I

    move-object/from16 v38, v9

    iget-object v9, v6, Ly/m;->l:[D

    const/16 v26, 0x0

    move-object/from16 v20, v14

    move-wide/from16 v21, v11

    move-object/from16 v23, v15

    move-object/from16 v24, v9

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v26}, Ly/o;->b(D[I[D[FI)V

    if-lez v2, :cond_12b2

    float-to-double v11, v13

    const/4 v9, 0x1

    aget v9, v0, v9

    float-to-double v13, v9

    sub-double v13, v27, v13

    const/4 v9, 0x0

    aget v9, v0, v9

    move-object/from16 v21, v8

    float-to-double v8, v9

    sub-double v8, v31, v8

    .line 321
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    add-double/2addr v8, v11

    double-to-float v8, v8

    move v13, v8

    goto :goto_12b4

    :cond_12b2
    move-object/from16 v21, v8

    :goto_12b4
    const/4 v8, 0x0

    aget v8, v0, v8

    float-to-double v8, v8

    const/4 v11, 0x1

    aget v11, v0, v11

    float-to-double v11, v11

    add-int/lit8 v2, v2, 0x1

    const/16 v14, 0x64

    move-wide/from16 v31, v8

    move-wide/from16 v27, v11

    move-object/from16 v8, v21

    move-object/from16 v11, v35

    move-object/from16 v12, v36

    move/from16 v15, v37

    move-object/from16 v9, v38

    goto/16 :goto_120d

    :cond_12d0
    move-object/from16 v21, v8

    move-object/from16 v38, v9

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move v2, v13

    goto :goto_12e6

    :cond_12da
    move-object/from16 v21, v8

    move-object/from16 v38, v9

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move-object/from16 v18, v13

    move-object/from16 v16, v14

    .line 322
    :goto_12e6
    iput-object v3, v10, Lu/e;->b:Ljava/lang/String;

    .line 323
    iget-object v0, v6, Ly/m;->u:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p4

    move-object/from16 v23, v4

    move-object/from16 v28, v7

    move-object/from16 p4, v17

    move-object/from16 v17, v18

    move-object/from16 v32, v35

    move-object/from16 v31, v36

    move-object/from16 v20, v38

    move-object/from16 v18, v16

    move-object/from16 v16, v5

    goto/16 :goto_f1e

    :cond_1303
    move-object/from16 v5, v16

    move-object/from16 v16, v18

    move-object/from16 v38, v20

    move-object/from16 v4, v23

    move-object/from16 v7, v28

    move-object/from16 v36, v31

    move-object/from16 v35, v32

    move-object/from16 v18, v17

    .line 324
    iget-object v0, v6, Ly/m;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1319
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly/d;

    .line 325
    instance-of v3, v2, Ly/f;

    if-eqz v3, :cond_1697

    .line 326
    check-cast v2, Ly/f;

    iget-object v3, v6, Ly/m;->u:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1338
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1697

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 328
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13e2

    const/4 v10, 0x7

    .line 329
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 330
    iget-object v11, v2, Ly/d;->c:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v10, :cond_13c5

    .line 331
    iget-object v11, v10, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 332
    sget-object v12, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v11, v12, :cond_1360

    goto :goto_1368

    .line 333
    :cond_1360
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lx/b;

    if-nez v9, :cond_1371

    :goto_1368
    move-object/from16 p4, v0

    move-object/from16 v28, v3

    move-object/from16 v20, v6

    move-object/from16 v17, v8

    goto :goto_13ab

    .line 334
    :cond_1371
    iget v11, v2, Ly/d;->a:I

    iget v12, v2, Ly/f;->e:I

    iget-object v13, v2, Ly/f;->f:Ljava/lang/String;

    iget v14, v2, Ly/f;->k:I

    iget v15, v2, Ly/f;->g:F

    move-object/from16 p4, v0

    iget v0, v2, Ly/f;->h:F

    move-object/from16 v17, v8

    iget v8, v2, Ly/f;->i:F

    invoke-virtual {v10}, Landroidx/constraintlayout/widget/ConstraintAttribute;->a()F

    move-result v27

    move-object/from16 v20, v6

    .line 335
    iget-object v6, v9, Lu/e;->f:Ljava/util/ArrayList;

    move-object/from16 v28, v3

    new-instance v3, Lu/e$b;

    move-object/from16 v22, v3

    move/from16 v23, v11

    move/from16 v24, v15

    move/from16 v25, v0

    move/from16 v26, v8

    invoke-direct/range {v22 .. v27}, Lu/e$b;-><init>(IFFFF)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, -0x1

    if-eq v14, v0, :cond_13a4

    .line 336
    iput v14, v9, Lu/e;->e:I

    .line 337
    :cond_13a4
    iput v12, v9, Lu/e;->c:I

    .line 338
    invoke-virtual {v9, v10}, Lu/e;->b(Landroidx/constraintlayout/widget/ConstraintAttribute;)V

    .line 339
    iput-object v13, v9, Lu/e;->d:Ljava/lang/String;

    :goto_13ab
    move-object/from16 v31, v2

    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v32, v35

    move-object/from16 v16, v1

    move-object/from16 v18, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v7

    goto/16 :goto_1675

    :cond_13c5
    move-object/from16 p4, v0

    move-object/from16 v20, v6

    move-object/from16 v17, v8

    move-object v0, v3

    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v3, v38

    move-object/from16 v16, v1

    goto/16 :goto_161d

    :cond_13e2
    move-object/from16 p4, v0

    move-object/from16 v28, v3

    move-object/from16 v20, v6

    move-object/from16 v17, v8

    .line 340
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1970

    :goto_13f1
    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v0, v21

    :goto_13f7
    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v3, v38

    goto/16 :goto_1594

    :sswitch_1407
    const-string v0, "wavePhase"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1410

    goto :goto_13f1

    :cond_1410
    const/16 v0, 0xd

    goto :goto_1430

    :sswitch_1413
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_141a

    goto :goto_13f1

    :cond_141a
    const/16 v0, 0xc

    goto :goto_1430

    :sswitch_141d
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1424

    goto :goto_13f1

    :cond_1424
    const/16 v0, 0xb

    goto :goto_1430

    :sswitch_1427
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_142e

    goto :goto_13f1

    :cond_142e
    const/16 v0, 0xa

    :goto_1430
    move v3, v0

    move-object/from16 v0, v21

    goto :goto_1443

    :sswitch_1434
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1441

    move-object/from16 v11, v16

    move-object/from16 v10, v18

    goto :goto_13f7

    :cond_1441
    const/16 v3, 0x9

    :goto_1443
    move v6, v3

    move-object/from16 v3, v38

    goto :goto_1465

    :sswitch_1447
    move-object/from16 v0, v21

    move-object/from16 v3, v38

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1463

    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    goto/16 :goto_1594

    :cond_1463
    const/16 v6, 0x8

    :goto_1465
    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v8, v36

    move/from16 v16, v6

    move-object/from16 v6, v35

    goto/16 :goto_1596

    :sswitch_1479
    move-object/from16 v0, v21

    move-object/from16 v6, v35

    move-object/from16 v3, v38

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1488

    move-object/from16 v8, v36

    goto :goto_14a9

    :cond_1488
    const/4 v8, 0x7

    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move/from16 v16, v8

    move-object/from16 v8, v36

    goto/16 :goto_1596

    :sswitch_149b
    move-object/from16 v0, v21

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v3, v38

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14ae

    :goto_14a9
    move-object/from16 v11, v16

    move-object/from16 v10, v18

    goto :goto_14f5

    :cond_14ae
    const/4 v10, 0x6

    move-object/from16 v11, v16

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move/from16 v16, v10

    move-object/from16 v10, v18

    goto/16 :goto_1596

    :sswitch_14bf
    move-object/from16 v10, v18

    move-object/from16 v0, v21

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v3, v38

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14d2

    move-object/from16 v11, v16

    goto :goto_14f5

    :cond_14d2
    const/4 v11, 0x5

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v40, v16

    move/from16 v16, v11

    move-object/from16 v11, v40

    goto/16 :goto_1596

    :sswitch_14e3
    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v0, v21

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v3, v38

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14ff

    :goto_14f5
    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    goto/16 :goto_1594

    :cond_14ff
    const/4 v12, 0x4

    move/from16 v16, v12

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    goto/16 :goto_1596

    :sswitch_150c
    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v0, v21

    move-object/from16 v12, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v3, v38

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1528

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    goto/16 :goto_1594

    :cond_1528
    move/from16 v16, v19

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    goto/16 :goto_1596

    :sswitch_1532
    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v0, v21

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v3, v38

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_154d

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    goto :goto_1594

    :cond_154d
    const/4 v14, 0x2

    move/from16 v16, v14

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    goto :goto_1596

    :sswitch_1555
    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v0, v21

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v3, v38

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1570

    move-object/from16 v15, v29

    goto :goto_1594

    :cond_1570
    const/4 v15, 0x1

    move/from16 v16, v15

    move-object/from16 v15, v29

    goto :goto_1596

    :sswitch_1576
    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v0, v21

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v6, v35

    move-object/from16 v8, v36

    move-object/from16 v3, v38

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1591

    goto :goto_1594

    :cond_1591
    const/16 v16, 0x0

    goto :goto_1596

    :goto_1594
    const/16 v16, -0x1

    :goto_1596
    packed-switch v16, :pswitch_data_19aa

    move-object/from16 v21, v0

    .line 341
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1604

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    const-string v1, "  UNKNOWN  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WARNING! KeyCycle"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1606

    :pswitch_15ba  #0xd
    move-object/from16 v21, v0

    .line 343
    iget v0, v2, Ly/f;->i:F

    goto :goto_15ff

    :pswitch_15bf  #0xc
    move-object/from16 v21, v0

    .line 344
    iget v0, v2, Ly/f;->h:F

    goto :goto_15ff

    :pswitch_15c4  #0xb
    move-object/from16 v21, v0

    .line 345
    iget v0, v2, Ly/f;->l:F

    goto :goto_15ff

    :pswitch_15c9  #0xa
    move-object/from16 v21, v0

    .line 346
    iget v0, v2, Ly/f;->o:F

    goto :goto_15ff

    :pswitch_15ce  #0x9
    move-object/from16 v21, v0

    .line 347
    iget v0, v2, Ly/f;->m:F

    goto :goto_15ff

    :pswitch_15d3  #0x8
    move-object/from16 v21, v0

    .line 348
    iget v0, v2, Ly/f;->n:F

    goto :goto_15ff

    :pswitch_15d8  #0x7
    move-object/from16 v21, v0

    .line 349
    iget v0, v2, Ly/f;->s:F

    goto :goto_15ff

    :pswitch_15dd  #0x6
    move-object/from16 v21, v0

    .line 350
    iget v0, v2, Ly/f;->r:F

    goto :goto_15ff

    :pswitch_15e2  #0x5
    move-object/from16 v21, v0

    .line 351
    iget v0, v2, Ly/f;->j:F

    goto :goto_15ff

    :pswitch_15e7  #0x4
    move-object/from16 v21, v0

    .line 352
    iget v0, v2, Ly/f;->v:F

    goto :goto_15ff

    :pswitch_15ec  #0x3
    move-object/from16 v21, v0

    .line 353
    iget v0, v2, Ly/f;->u:F

    goto :goto_15ff

    :pswitch_15f1  #0x2
    move-object/from16 v21, v0

    .line 354
    iget v0, v2, Ly/f;->t:F

    goto :goto_15ff

    :pswitch_15f6  #0x1
    move-object/from16 v21, v0

    .line 355
    iget v0, v2, Ly/f;->q:F

    goto :goto_15ff

    :pswitch_15fb  #0x0
    move-object/from16 v21, v0

    .line 356
    iget v0, v2, Ly/f;->p:F

    :goto_15ff
    move/from16 v27, v0

    move-object/from16 v16, v1

    goto :goto_160a

    :cond_1604
    move-object/from16 v16, v1

    :goto_1606
    const/high16 v0, 0x7fc00000  # Float.NaN

    move/from16 v27, v0

    .line 357
    :goto_160a
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1613

    move-object/from16 v0, v28

    goto :goto_161d

    :cond_1613
    move-object/from16 v0, v28

    .line 358
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/b;

    if-nez v1, :cond_163a

    :goto_161d
    move-object/from16 v38, v3

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move-object/from16 v18, v10

    move-object/from16 v34, v12

    move-object/from16 v33, v13

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    move-object/from16 v1, v16

    move-object/from16 v8, v17

    move-object/from16 v6, v20

    move-object v3, v0

    move-object/from16 v16, v11

    move-object/from16 v0, p4

    goto/16 :goto_1338

    .line 359
    :cond_163a
    iget v9, v2, Ly/d;->a:I

    move-object/from16 v28, v0

    iget v0, v2, Ly/f;->e:I

    move-object/from16 v38, v3

    iget-object v3, v2, Ly/f;->f:Ljava/lang/String;

    move-object/from16 v18, v4

    iget v4, v2, Ly/f;->k:I

    move-object/from16 v29, v5

    iget v5, v2, Ly/f;->g:F

    move-object/from16 v32, v6

    iget v6, v2, Ly/f;->h:F

    move-object/from16 v30, v7

    iget v7, v2, Ly/f;->i:F

    move-object/from16 v31, v2

    .line 360
    iget-object v2, v1, Lu/e;->f:Ljava/util/ArrayList;

    move-object/from16 v36, v8

    new-instance v8, Lu/e$b;

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    invoke-direct/range {v22 .. v27}, Lu/e$b;-><init>(IFFFF)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    if-eq v4, v2, :cond_1671

    .line 361
    iput v4, v1, Lu/e;->e:I

    .line 362
    :cond_1671
    iput v0, v1, Lu/e;->c:I

    .line 363
    iput-object v3, v1, Lu/e;->d:Ljava/lang/String;

    :goto_1675
    move-object/from16 v0, p4

    move-object/from16 v34, v12

    move-object/from16 v33, v13

    move-object/from16 v1, v16

    move-object/from16 v8, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v20

    move-object/from16 v3, v28

    move-object/from16 v5, v29

    move-object/from16 v7, v30

    move-object/from16 v2, v31

    move-object/from16 v35, v32

    move-object/from16 v18, v10

    move-object/from16 v16, v11

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    goto/16 :goto_1338

    :cond_1697
    move-object/from16 p4, v0

    move-object/from16 v20, v6

    move-object/from16 v11, v16

    move-object/from16 v10, v18

    move-object/from16 v15, v29

    move-object/from16 v14, v30

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    move-object/from16 v32, v35

    move-object/from16 v16, v1

    move-object/from16 v18, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v7

    move-object/from16 v0, p4

    move-object/from16 v34, v12

    move-object/from16 v33, v13

    move-object/from16 v1, v16

    move-object/from16 v4, v18

    move-object/from16 v6, v20

    move-object/from16 v5, v29

    move-object/from16 v7, v30

    move-object/from16 v35, v32

    move-object/from16 v18, v10

    move-object/from16 v16, v11

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    goto/16 :goto_1319

    :cond_16cd
    move-object v0, v6

    .line 364
    iget-object v1, v0, Ly/m;->u:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16d8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16e9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/b;

    .line 365
    invoke-virtual {v2}, Lu/e;->c()V

    goto :goto_16d8

    :cond_16e8
    move-object v0, v6

    .line 366
    :cond_16e9
    new-instance v9, Landroidx/constraintlayout/motion/widget/c$a;

    move-object/from16 v1, p0

    iget v12, v1, Landroidx/constraintlayout/motion/widget/c;->h:I

    iget v13, v1, Landroidx/constraintlayout/motion/widget/c;->i:I

    iget v14, v1, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 368
    iget v3, v1, Landroidx/constraintlayout/motion/widget/c;->l:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1743

    const/4 v2, -0x1

    if-eq v3, v2, :cond_1736

    if-eqz v3, :cond_1730

    const/4 v2, 0x1

    if-eq v3, v2, :cond_172a

    const/4 v2, 0x2

    if-eq v3, v2, :cond_1724

    const/4 v2, 0x4

    if-eq v3, v2, :cond_171e

    const/4 v2, 0x5

    if-eq v3, v2, :cond_1718

    const/4 v2, 0x6

    if-eq v3, v2, :cond_1712

    const/4 v2, 0x0

    goto :goto_1749

    .line 369
    :cond_1712
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    goto :goto_1749

    .line 370
    :cond_1718
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    goto :goto_1749

    .line 371
    :cond_171e
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_1749

    .line 372
    :cond_1724
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1749

    .line 373
    :cond_172a
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_1749

    .line 374
    :cond_1730
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_1749

    .line 375
    :cond_1736
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/c;->m:Ljava/lang/String;

    invoke-static {v2}, Lu/c;->c(Ljava/lang/String;)Lu/c;

    move-result-object v2

    .line 376
    new-instance v3, Ly/r;

    invoke-direct {v3, v2}, Ly/r;-><init>(Lu/c;)V

    move-object v2, v3

    goto :goto_1749

    .line 377
    :cond_1743
    iget v3, v1, Landroidx/constraintlayout/motion/widget/c;->n:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    :goto_1749
    move-object v15, v2

    .line 378
    iget v2, v1, Landroidx/constraintlayout/motion/widget/c;->p:I

    iget v3, v1, Landroidx/constraintlayout/motion/widget/c;->q:I

    move-object/from16 v10, p1

    move-object v11, v0

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v9 .. v17}, Landroidx/constraintlayout/motion/widget/c$a;-><init>(Landroidx/constraintlayout/motion/widget/d;Ly/m;IIILandroid/view/animation/Interpolator;II)V

    return-void

    :cond_1759
    move-object v1, v0

    if-ne v5, v8, :cond_179f

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v0

    const/4 v5, 0x0

    .line 380
    :goto_1761
    array-length v6, v0

    if-ge v5, v6, :cond_179f

    .line 381
    aget v6, v0, v5

    if-ne v6, v2, :cond_176b

    move-object/from16 v7, p2

    goto :goto_179c

    :cond_176b
    move-object/from16 v7, p2

    .line 382
    iget-object v8, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-nez v8, :cond_1773

    const/4 v6, 0x0

    goto :goto_1777

    .line 383
    :cond_1773
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    move-result-object v6

    .line 384
    :goto_1777
    array-length v8, v4

    const/4 v9, 0x0

    :goto_1779
    if-ge v9, v8, :cond_179c

    aget-object v10, v4, v9

    .line 385
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v6, v10}, Landroidx/constraintlayout/widget/c;->k(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object v10

    .line 386
    iget-object v11, v1, Landroidx/constraintlayout/motion/widget/c;->g:Landroidx/constraintlayout/widget/c$a;

    if-eqz v11, :cond_1799

    .line 387
    iget-object v11, v11, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    if-eqz v11, :cond_1790

    .line 388
    invoke-virtual {v11, v10}, Landroidx/constraintlayout/widget/c$a$a;->e(Landroidx/constraintlayout/widget/c$a;)V

    .line 389
    :cond_1790
    iget-object v10, v10, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    iget-object v11, v1, Landroidx/constraintlayout/motion/widget/c;->g:Landroidx/constraintlayout/widget/c$a;

    iget-object v11, v11, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1799
    add-int/lit8 v9, v9, 0x1

    goto :goto_1779

    :cond_179c
    :goto_179c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1761

    :cond_179f
    move-object/from16 v7, p2

    .line 390
    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 391
    iget-object v5, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 392
    iget-object v5, v3, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17b5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17d6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 393
    iget-object v8, v3, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/c$a;

    if-nez v8, :cond_17cc

    goto :goto_17b5

    .line 394
    :cond_17cc
    iget-object v9, v0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroidx/constraintlayout/widget/c$a;->b()Landroidx/constraintlayout/widget/c$a;

    move-result-object v8

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17b5

    .line 395
    :cond_17d6
    array-length v3, v4

    const/4 v5, 0x0

    :goto_17d8
    if-ge v5, v3, :cond_17fb

    aget-object v6, v4, v5

    .line 396
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/c;->k(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object v6

    .line 397
    iget-object v8, v1, Landroidx/constraintlayout/motion/widget/c;->g:Landroidx/constraintlayout/widget/c$a;

    if-eqz v8, :cond_17f8

    .line 398
    iget-object v8, v8, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    if-eqz v8, :cond_17ef

    .line 399
    invoke-virtual {v8, v6}, Landroidx/constraintlayout/widget/c$a$a;->e(Landroidx/constraintlayout/widget/c$a;)V

    .line 400
    :cond_17ef
    iget-object v6, v6, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    iget-object v8, v1, Landroidx/constraintlayout/motion/widget/c;->g:Landroidx/constraintlayout/widget/c$a;

    iget-object v8, v8, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_17f8
    add-int/lit8 v5, v5, 0x1

    goto :goto_17d8

    .line 401
    :cond_17fb
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    if-eqz v3, :cond_1804

    .line 402
    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/a;->g:Landroid/util/SparseArray;

    .line 403
    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    :cond_1804
    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget v2, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->d:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    iget-object v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->a:Landroidx/constraintlayout/motion/widget/a;

    iget v2, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->f:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/a;->b(I)Landroidx/constraintlayout/widget/c;

    const/4 v0, 0x0

    throw v0

    :sswitch_data_1814
    .sparse-switch
        -0x4a771f66 -> :sswitch_4f6
        -0x4a771f65 -> :sswitch_4d4
        -0x490b9c39 -> :sswitch_4b2
        -0x490b9c38 -> :sswitch_494
        -0x490b9c37 -> :sswitch_46e
        -0x3bab3dd3 -> :sswitch_44e
        -0x3621dfb2 -> :sswitch_421
        -0x3621dfb1 -> :sswitch_406
        -0x2f893320 -> :sswitch_3e8
        -0x2d5a2d1e -> :sswitch_3da
        -0x2d5a2d1d -> :sswitch_3c0
        -0x266f082 -> :sswitch_3af
        -0x42d1a3 -> :sswitch_3a5
        0x2382115 -> :sswitch_39b
        0x589b15e -> :sswitch_391
        0x94e04ec -> :sswitch_387
    .end sparse-switch

    :pswitch_data_1856
    .packed-switch 0x0
        :pswitch_575  #00000000
        :pswitch_56f  #00000001
        :pswitch_569  #00000002
        :pswitch_563  #00000003
        :pswitch_55d  #00000004
        :pswitch_557  #00000005
        :pswitch_551  #00000006
        :pswitch_54b  #00000007
        :pswitch_545  #00000008
        :pswitch_53f  #00000009
        :pswitch_539  #0000000a
        :pswitch_533  #0000000b
        :pswitch_52d  #0000000c
        :pswitch_527  #0000000d
        :pswitch_521  #0000000e
        :pswitch_51b  #0000000f
    .end packed-switch

    :sswitch_data_187a
    .sparse-switch
        -0x4a771f66 -> :sswitch_766
        -0x4a771f65 -> :sswitch_751
        -0x490b9c39 -> :sswitch_73c
        -0x490b9c38 -> :sswitch_722
        -0x490b9c37 -> :sswitch_716
        -0x3bab3dd3 -> :sswitch_702
        -0x3621dfb2 -> :sswitch_6f9
        -0x3621dfb1 -> :sswitch_6f0
        -0x266f082 -> :sswitch_6e6
        -0x42d1a3 -> :sswitch_6dc
        0x2382115 -> :sswitch_6d2
        0x589b15e -> :sswitch_6c8
    .end sparse-switch

    :pswitch_data_18ac
    .packed-switch 0x0
        :pswitch_7c9  #00000000
        :pswitch_7c3  #00000001
        :pswitch_7bd  #00000002
        :pswitch_7b7  #00000003
        :pswitch_7b1  #00000004
        :pswitch_7ab  #00000005
        :pswitch_7a5  #00000006
        :pswitch_79f  #00000007
        :pswitch_799  #00000008
        :pswitch_793  #00000009
        :pswitch_78d  #0000000a
        :pswitch_787  #0000000b
    .end packed-switch

    :sswitch_data_18c8
    .sparse-switch
        -0x4a771f66 -> :sswitch_949
        -0x4a771f65 -> :sswitch_937
        -0x490b9c39 -> :sswitch_925
        -0x490b9c38 -> :sswitch_915
        -0x490b9c37 -> :sswitch_90c
        -0x3bab3dd3 -> :sswitch_903
        -0x3621dfb2 -> :sswitch_8f2
        -0x3621dfb1 -> :sswitch_8e9
        -0x266f082 -> :sswitch_8df
        -0x42d1a3 -> :sswitch_8d5
        0x2382115 -> :sswitch_8cb
        0x589b15e -> :sswitch_8c0
    .end sparse-switch

    :pswitch_data_18fa
    .packed-switch 0x0
        :pswitch_b30  #00000000
        :pswitch_b0a  #00000001
        :pswitch_ae4  #00000002
        :pswitch_abd  #00000003
        :pswitch_a96  #00000004
        :pswitch_a6f  #00000005
        :pswitch_a48  #00000006
        :pswitch_a21  #00000007
        :pswitch_9fa  #00000008
        :pswitch_9d3  #00000009
        :pswitch_9ac  #0000000a
        :pswitch_97f  #0000000b
    .end packed-switch

    :sswitch_data_1916
    .sparse-switch
        -0x4a771f66 -> :sswitch_1137
        -0x4a771f65 -> :sswitch_110b
        -0x490b9c39 -> :sswitch_10e5
        -0x490b9c38 -> :sswitch_10b7
        -0x490b9c37 -> :sswitch_108d
        -0x3bab3dd3 -> :sswitch_106e
        -0x3621dfb2 -> :sswitch_1048
        -0x3621dfb1 -> :sswitch_102e
        -0x2f893320 -> :sswitch_1006
        -0x266f082 -> :sswitch_ff0
        -0x42d1a3 -> :sswitch_fcd
        0x2382115 -> :sswitch_fa0
        0x589b15e -> :sswitch_f92
        0x94e04ec -> :sswitch_f75
    .end sparse-switch

    :pswitch_data_1950
    .packed-switch 0x0
        :pswitch_11b5  #00000000
        :pswitch_11af  #00000001
        :pswitch_11a9  #00000002
        :pswitch_11a3  #00000003
        :pswitch_119d  #00000004
        :pswitch_1197  #00000005
        :pswitch_1191  #00000006
        :pswitch_118b  #00000007
        :pswitch_1185  #00000008
        :pswitch_117f  #00000009
        :pswitch_1179  #0000000a
        :pswitch_1173  #0000000b
        :pswitch_116d  #0000000c
        :pswitch_1167  #0000000d
    .end packed-switch

    :sswitch_data_1970
    .sparse-switch
        -0x4a771f66 -> :sswitch_1576
        -0x4a771f65 -> :sswitch_1555
        -0x490b9c39 -> :sswitch_1532
        -0x490b9c38 -> :sswitch_150c
        -0x490b9c37 -> :sswitch_14e3
        -0x3bab3dd3 -> :sswitch_14bf
        -0x3621dfb2 -> :sswitch_149b
        -0x3621dfb1 -> :sswitch_1479
        -0x266f082 -> :sswitch_1447
        -0x42d1a3 -> :sswitch_1434
        0x2382115 -> :sswitch_1427
        0x589b15e -> :sswitch_141d
        0x94e04ec -> :sswitch_1413
        0x5b327a02 -> :sswitch_1407
    .end sparse-switch

    :pswitch_data_19aa
    .packed-switch 0x0
        :pswitch_15fb  #00000000
        :pswitch_15f6  #00000001
        :pswitch_15f1  #00000002
        :pswitch_15ec  #00000003
        :pswitch_15e7  #00000004
        :pswitch_15e2  #00000005
        :pswitch_15dd  #00000006
        :pswitch_15d8  #00000007
        :pswitch_15d3  #00000008
        :pswitch_15ce  #00000009
        :pswitch_15c9  #0000000a
        :pswitch_15c4  #0000000b
        :pswitch_15bf  #0000000c
        :pswitch_15ba  #0000000d
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)Z
    .registers 7

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/c;->r:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_9

    .line 8
    :goto_7
    move v0, v3

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_7

    .line 17
    :cond_10
    move v0, v2

    .line 18
    :goto_11
    iget v4, p0, Landroidx/constraintlayout/motion/widget/c;->s:I

    .line 20
    if-ne v4, v1, :cond_17

    .line 22
    :goto_15
    move p1, v3

    .line 23
    goto :goto_1f

    .line 24
    :cond_17
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_1e

    .line 30
    goto :goto_15

    .line 31
    :cond_1e
    move p1, v2

    .line 32
    :goto_1f
    if-eqz v0, :cond_24

    .line 34
    if-eqz p1, :cond_24

    .line 36
    move v2, v3

    .line 37
    :cond_24
    return v2
.end method

.method public final c(Landroid/view/View;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_e

    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/lang/String;

    .line 12
    if-nez v1, :cond_e

    .line 14
    return v0

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/c;->b(Landroid/view/View;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_15

    .line 21
    return v0

    .line 22
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 25
    move-result v1

    .line 26
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v1, v2, :cond_1f

    .line 31
    return v3

    .line 32
    :cond_1f
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/lang/String;

    .line 34
    if-nez v1, :cond_24

    .line 36
    return v0

    .line 37
    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    move-result-object v1

    .line 41
    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 43
    if-eqz v1, :cond_3f

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 51
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->Y:Ljava/lang/String;

    .line 53
    if-eqz p1, :cond_3f

    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/lang/String;

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3f

    .line 63
    return v3

    .line 64
    :cond_3f
    return v0
.end method

.method public final d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 10

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lz/d;->ViewTransition:[I

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_f
    if-ge v0, p2, :cond_12b

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 21
    move-result v1

    .line 22
    sget v2, Lz/d;->ViewTransition_android_id:I

    .line 24
    if-ne v1, v2, :cond_23

    .line 26
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->a:I

    .line 28
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 31
    move-result v1

    .line 32
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->a:I

    .line 34
    goto/16 :goto_127

    .line 36
    :cond_23
    sget v2, Lz/d;->ViewTransition_motionTarget:I

    .line 38
    const/4 v3, 0x3

    .line 39
    if-ne v1, v2, :cond_44

    .line 41
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 43
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 46
    move-result-object v2

    .line 47
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 49
    if-ne v2, v3, :cond_3a

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->k:Ljava/lang/String;

    .line 57
    goto/16 :goto_127

    .line 59
    :cond_3a
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 64
    move-result v1

    .line 65
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->j:I

    .line 67
    goto/16 :goto_127

    .line 69
    :cond_44
    sget v2, Lz/d;->ViewTransition_onStateTransition:I

    .line 71
    if-ne v1, v2, :cond_52

    .line 73
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 75
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 78
    move-result v1

    .line 79
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->b:I

    .line 81
    goto/16 :goto_127

    .line 83
    :cond_52
    sget v2, Lz/d;->ViewTransition_transitionDisable:I

    .line 85
    if-ne v1, v2, :cond_60

    .line 87
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/c;->c:Z

    .line 89
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 92
    move-result v1

    .line 93
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/c;->c:Z

    .line 95
    goto/16 :goto_127

    .line 97
    :cond_60
    sget v2, Lz/d;->ViewTransition_pathMotionArc:I

    .line 99
    if-ne v1, v2, :cond_6e

    .line 101
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->d:I

    .line 103
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 106
    move-result v1

    .line 107
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->d:I

    .line 109
    goto/16 :goto_127

    .line 111
    :cond_6e
    sget v2, Lz/d;->ViewTransition_duration:I

    .line 113
    if-ne v1, v2, :cond_7c

    .line 115
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->h:I

    .line 117
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 120
    move-result v1

    .line 121
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->h:I

    .line 123
    goto/16 :goto_127

    .line 125
    :cond_7c
    sget v2, Lz/d;->ViewTransition_upDuration:I

    .line 127
    if-ne v1, v2, :cond_8a

    .line 129
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->i:I

    .line 131
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 134
    move-result v1

    .line 135
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->i:I

    .line 137
    goto/16 :goto_127

    .line 139
    :cond_8a
    sget v2, Lz/d;->ViewTransition_viewTransitionMode:I

    .line 141
    if-ne v1, v2, :cond_98

    .line 143
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->e:I

    .line 145
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 148
    move-result v1

    .line 149
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->e:I

    .line 151
    goto/16 :goto_127

    .line 153
    :cond_98
    sget v2, Lz/d;->ViewTransition_motionInterpolator:I

    .line 155
    if-ne v1, v2, :cond_da

    .line 157
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 160
    move-result-object v2

    .line 161
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 163
    const/4 v4, -0x2

    .line 164
    const/4 v5, -0x1

    .line 165
    const/4 v6, 0x1

    .line 166
    if-ne v2, v6, :cond_b3

    .line 168
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 171
    move-result v1

    .line 172
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->n:I

    .line 174
    if-eq v1, v5, :cond_127

    .line 176
    iput v4, p0, Landroidx/constraintlayout/motion/widget/c;->l:I

    .line 178
    goto/16 :goto_127

    .line 180
    :cond_b3
    if-ne v2, v3, :cond_d1

    .line 182
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 186
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/c;->m:Ljava/lang/String;

    .line 188
    if-eqz v2, :cond_ce

    .line 190
    const-string v3, "/"

    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 195
    move-result v2

    .line 196
    if-lez v2, :cond_ce

    .line 198
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 201
    move-result v1

    .line 202
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->n:I

    .line 204
    iput v4, p0, Landroidx/constraintlayout/motion/widget/c;->l:I

    .line 206
    goto :goto_127

    .line 207
    :cond_ce
    iput v5, p0, Landroidx/constraintlayout/motion/widget/c;->l:I

    .line 209
    goto :goto_127

    .line 210
    :cond_d1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->l:I

    .line 212
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 215
    move-result v1

    .line 216
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->l:I

    .line 218
    goto :goto_127

    .line 219
    :cond_da
    sget v2, Lz/d;->ViewTransition_setsTag:I

    .line 221
    if-ne v1, v2, :cond_e7

    .line 223
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->p:I

    .line 225
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 228
    move-result v1

    .line 229
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->p:I

    .line 231
    goto :goto_127

    .line 232
    :cond_e7
    sget v2, Lz/d;->ViewTransition_clearsTag:I

    .line 234
    if-ne v1, v2, :cond_f4

    .line 236
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->q:I

    .line 238
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 241
    move-result v1

    .line 242
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->q:I

    .line 244
    goto :goto_127

    .line 245
    :cond_f4
    sget v2, Lz/d;->ViewTransition_ifTagSet:I

    .line 247
    if-ne v1, v2, :cond_101

    .line 249
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->r:I

    .line 251
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 254
    move-result v1

    .line 255
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->r:I

    .line 257
    goto :goto_127

    .line 258
    :cond_101
    sget v2, Lz/d;->ViewTransition_ifTagNotSet:I

    .line 260
    if-ne v1, v2, :cond_10e

    .line 262
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->s:I

    .line 264
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 267
    move-result v1

    .line 268
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->s:I

    .line 270
    goto :goto_127

    .line 271
    :cond_10e
    sget v2, Lz/d;->ViewTransition_SharedValueId:I

    .line 273
    if-ne v1, v2, :cond_11b

    .line 275
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->u:I

    .line 277
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 280
    move-result v1

    .line 281
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->u:I

    .line 283
    goto :goto_127

    .line 284
    :cond_11b
    sget v2, Lz/d;->ViewTransition_SharedValue:I

    .line 286
    if-ne v1, v2, :cond_127

    .line 288
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->t:I

    .line 290
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 293
    move-result v1

    .line 294
    iput v1, p0, Landroidx/constraintlayout/motion/widget/c;->t:I

    .line 296
    :cond_127
    :goto_127
    add-int/lit8 v0, v0, 0x1

    .line 298
    goto/16 :goto_f

    .line 300
    :cond_12b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "ViewTransition("

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/c;->o:Landroid/content/Context;

    .line 9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/c;->a:I

    .line 11
    invoke-static {v1, v2}, Ly/a;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ")"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
