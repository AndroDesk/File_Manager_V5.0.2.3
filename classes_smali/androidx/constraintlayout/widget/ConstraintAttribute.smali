.class public final Landroidx/constraintlayout/widget/ConstraintAttribute;
.super Ljava/lang/Object;
.source "ConstraintAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

.field public d:I

.field public e:F

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->a:Z

    .line 8
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->b:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 10
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 4
    iput-boolean p4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->a:Z

    .line 5
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V
    .registers 15

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lz/d;->CustomAttribute:[I

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v3, v1

    .line 18
    move-object v4, v3

    .line 19
    move v5, v2

    .line 20
    move v6, v5

    .line 21
    :goto_14
    if-ge v5, v0, :cond_f4

    .line 23
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 26
    move-result v7

    .line 27
    sget v8, Lz/d;->CustomAttribute_attributeName:I

    .line 29
    const/4 v9, 0x1

    .line 30
    if-ne v7, v8, :cond_48

    .line 32
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_f0

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    move-result v7

    .line 42
    if-lez v7, :cond_f0

    .line 44
    new-instance v7, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 52
    move-result v8

    .line 53
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    .line 56
    move-result v8

    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    goto/16 :goto_f0

    .line 73
    :cond_48
    sget v8, Lz/d;->CustomAttribute_methodName:I

    .line 75
    if-ne v7, v8, :cond_53

    .line 77
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    move v6, v9

    .line 82
    goto/16 :goto_f0

    .line 84
    :cond_53
    sget v8, Lz/d;->CustomAttribute_customBoolean:I

    .line 86
    if-ne v7, v8, :cond_63

    .line 88
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 91
    move-result v3

    .line 92
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    move-result-object v3

    .line 96
    sget-object v4, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 98
    goto/16 :goto_f0

    .line 100
    :cond_63
    sget v8, Lz/d;->CustomAttribute_customColorValue:I

    .line 102
    if-ne v7, v8, :cond_73

    .line 104
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 106
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 109
    move-result v4

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v4

    .line 114
    goto/16 :goto_ed

    .line 116
    :cond_73
    sget v8, Lz/d;->CustomAttribute_customColorDrawableValue:I

    .line 118
    if-ne v7, v8, :cond_82

    .line 120
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 122
    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 125
    move-result v4

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v4

    .line 130
    goto :goto_ed

    .line 131
    :cond_82
    sget v8, Lz/d;->CustomAttribute_customPixelDimension:I

    .line 133
    const/4 v10, 0x0

    .line 134
    if-ne v7, v8, :cond_9e

    .line 136
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 138
    invoke-virtual {p1, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 141
    move-result v4

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 149
    move-result-object v7

    .line 150
    invoke-static {v9, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 153
    move-result v4

    .line 154
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 157
    move-result-object v4

    .line 158
    goto :goto_ed

    .line 159
    :cond_9e
    sget v8, Lz/d;->CustomAttribute_customDimension:I

    .line 161
    if-ne v7, v8, :cond_ad

    .line 163
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 165
    invoke-virtual {p1, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 168
    move-result v4

    .line 169
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 172
    move-result-object v4

    .line 173
    goto :goto_ed

    .line 174
    :cond_ad
    sget v8, Lz/d;->CustomAttribute_customFloatValue:I

    .line 176
    if-ne v7, v8, :cond_be

    .line 178
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 180
    const/high16 v4, 0x7fc00000  # Float.NaN

    .line 182
    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 185
    move-result v4

    .line 186
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 189
    move-result-object v4

    .line 190
    goto :goto_ed

    .line 191
    :cond_be
    sget v8, Lz/d;->CustomAttribute_customIntegerValue:I

    .line 193
    const/4 v9, -0x1

    .line 194
    if-ne v7, v8, :cond_ce

    .line 196
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 198
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 201
    move-result v4

    .line 202
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v4

    .line 206
    goto :goto_ed

    .line 207
    :cond_ce
    sget v8, Lz/d;->CustomAttribute_customStringValue:I

    .line 209
    if-ne v7, v8, :cond_d9

    .line 211
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 213
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 216
    move-result-object v4

    .line 217
    goto :goto_ed

    .line 218
    :cond_d9
    sget v8, Lz/d;->CustomAttribute_customReference:I

    .line 220
    if-ne v7, v8, :cond_f0

    .line 222
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 224
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 227
    move-result v4

    .line 228
    if-ne v4, v9, :cond_e9

    .line 230
    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 233
    move-result v4

    .line 234
    :cond_e9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v4

    .line 238
    :goto_ed
    move-object v11, v4

    .line 239
    move-object v4, v3

    .line 240
    move-object v3, v11

    .line 241
    :cond_f0
    :goto_f0
    add-int/lit8 v5, v5, 0x1

    .line 243
    goto/16 :goto_14

    .line 245
    :cond_f4
    if-eqz v1, :cond_100

    .line 247
    if-eqz v3, :cond_100

    .line 249
    new-instance p0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 251
    invoke-direct {p0, v1, v4, v3, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V

    .line 254
    invoke-virtual {p2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    return-void
.end method

.method public static e(Landroid/view/View;Ljava/util/HashMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "\" not found on "

    .line 3
    const-string v1, " Custom Attribute \""

    .line 5
    const-string v2, "TransitionLayout"

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 14
    move-result-object v4

    .line 15
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v4

    .line 19
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_176

    .line 25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v6

    .line 35
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 37
    iget-boolean v7, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->a:Z

    .line 39
    if-nez v7, :cond_2f

    .line 41
    const-string v7, "set"

    .line 43
    invoke-static {v7, v5}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v7

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move-object v7, v5

    .line 49
    :goto_30
    :try_start_30
    sget-object v8, Landroidx/constraintlayout/widget/ConstraintAttribute$a;->a:[I

    .line 51
    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 53
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 56
    move-result v9

    .line 57
    aget v8, v8, v9

    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x1

    .line 61
    packed-switch v8, :pswitch_data_178

    .line 64
    goto :goto_12

    .line 65
    :pswitch_40  #0x8
    new-array v8, v10, [Ljava/lang/Class;

    .line 67
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 69
    aput-object v11, v8, v9

    .line 71
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    move-result-object v8

    .line 75
    new-array v10, v10, [Ljava/lang/Object;

    .line 77
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 79
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    move-result-object v6

    .line 83
    aput-object v6, v10, v9

    .line 85
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    goto :goto_12

    .line 89
    :pswitch_58  #0x7
    new-array v8, v10, [Ljava/lang/Class;

    .line 91
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 93
    aput-object v11, v8, v9

    .line 95
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    move-result-object v8

    .line 99
    new-array v10, v10, [Ljava/lang/Object;

    .line 101
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 103
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 106
    move-result-object v6

    .line 107
    aput-object v6, v10, v9

    .line 109
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    goto :goto_12

    .line 113
    :pswitch_70  #0x6
    new-array v8, v10, [Ljava/lang/Class;

    .line 115
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 117
    aput-object v11, v8, v9

    .line 119
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 122
    move-result-object v8

    .line 123
    new-array v10, v10, [Ljava/lang/Object;

    .line 125
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->d:I

    .line 127
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v6

    .line 131
    aput-object v6, v10, v9

    .line 133
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    goto :goto_12

    .line 137
    :pswitch_88  #0x5
    new-array v8, v10, [Ljava/lang/Class;

    .line 139
    const-class v11, Landroid/graphics/drawable/Drawable;

    .line 141
    aput-object v11, v8, v9

    .line 143
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 146
    move-result-object v8

    .line 147
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    .line 149
    invoke-direct {v11}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 152
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->h:I

    .line 154
    invoke-virtual {v11, v6}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 157
    new-array v6, v10, [Ljava/lang/Object;

    .line 159
    aput-object v11, v6, v9

    .line 161
    invoke-virtual {v8, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    goto/16 :goto_12

    .line 166
    :pswitch_a5  #0x4
    new-array v8, v10, [Ljava/lang/Class;

    .line 168
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 170
    aput-object v11, v8, v9

    .line 172
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 175
    move-result-object v8

    .line 176
    new-array v10, v10, [Ljava/lang/Object;

    .line 178
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->h:I

    .line 180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    move-result-object v6

    .line 184
    aput-object v6, v10, v9

    .line 186
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    goto/16 :goto_12

    .line 191
    :pswitch_be  #0x3
    new-array v8, v10, [Ljava/lang/Class;

    .line 193
    const-class v11, Ljava/lang/CharSequence;

    .line 195
    aput-object v11, v8, v9

    .line 197
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 200
    move-result-object v8

    .line 201
    new-array v10, v10, [Ljava/lang/Object;

    .line 203
    iget-object v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->f:Ljava/lang/String;

    .line 205
    aput-object v6, v10, v9

    .line 207
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    goto/16 :goto_12

    .line 212
    :pswitch_d3  #0x2
    new-array v8, v10, [Ljava/lang/Class;

    .line 214
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 216
    aput-object v11, v8, v9

    .line 218
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 221
    move-result-object v8

    .line 222
    new-array v10, v10, [Ljava/lang/Object;

    .line 224
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->g:Z

    .line 226
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 229
    move-result-object v6

    .line 230
    aput-object v6, v10, v9

    .line 232
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    goto/16 :goto_12

    .line 237
    :pswitch_ec  #0x1
    new-array v8, v10, [Ljava/lang/Class;

    .line 239
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 241
    aput-object v11, v8, v9

    .line 243
    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 246
    move-result-object v8

    .line 247
    new-array v10, v10, [Ljava/lang/Object;

    .line 249
    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->d:I

    .line 251
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    move-result-object v6

    .line 255
    aput-object v6, v10, v9

    .line 257
    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_103
    .catch Ljava/lang/NoSuchMethodException; {:try_start_30 .. :try_end_103} :catch_135
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_103} :catch_11d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_103} :catch_105

    .line 260
    goto/16 :goto_12

    .line 262
    :catch_105
    move-exception v6

    .line 263
    invoke-static {v1, v5, v0}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 270
    move-result-object v7

    .line 271
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v5

    .line 278
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 284
    goto/16 :goto_12

    .line 286
    :catch_11d
    move-exception v6

    .line 287
    invoke-static {v1, v5, v0}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    move-result-object v5

    .line 291
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 294
    move-result-object v7

    .line 295
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v5

    .line 302
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    goto/16 :goto_12

    .line 310
    :catch_135
    move-exception v6

    .line 311
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 314
    move-result-object v6

    .line 315
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 335
    move-result-object v5

    .line 336
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v5

    .line 343
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    .line 348
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v6, " must have a method "

    .line 360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object v5

    .line 370
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    goto/16 :goto_12

    .line 375
    :cond_176
    return-void

    .line 376
    nop

    .line 377
    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_ec  #00000001
        :pswitch_d3  #00000002
        :pswitch_be  #00000003
        :pswitch_a5  #00000004
        :pswitch_88  #00000005
        :pswitch_70  #00000006
        :pswitch_58  #00000007
        :pswitch_40  #00000008
    .end packed-switch
.end method


# virtual methods
.method public final a()F
    .registers 3

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$a;->a:[I

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    packed-switch v0, :pswitch_data_34

    .line 14
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 16
    return v0

    .line 17
    :pswitch_10  #0x8
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 19
    return v0

    .line 20
    :pswitch_13  #0x7
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 22
    return v0

    .line 23
    :pswitch_16  #0x6
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->d:I

    .line 25
    int-to-float v0, v0

    .line 26
    return v0

    .line 27
    :pswitch_1a  #0x4, 0x5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    const-string v1, "Color does not have a single color to interpolate"

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    :pswitch_22  #0x3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 37
    const-string v1, "Cannot interpolate String"

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0

    .line 43
    :pswitch_2a  #0x2
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->g:Z

    .line 45
    if-eqz v0, :cond_31

    .line 47
    const/high16 v0, 0x3f800000  # 1.0f

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 v0, 0x0

    .line 51
    :goto_32
    return v0

    .line 52
    nop

    .line 53
    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_2a  #00000002
        :pswitch_22  #00000003
        :pswitch_1a  #00000004
        :pswitch_1a  #00000005
        :pswitch_16  #00000006
        :pswitch_13  #00000007
        :pswitch_10  #00000008
    .end packed-switch
.end method

.method public final b([F)V
    .registers 12

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$a;->a:[I

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x0

    .line 12
    packed-switch v0, :pswitch_data_70

    .line 15
    goto :goto_6e

    .line 16
    :pswitch_f  #0x8
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 18
    aput v0, p1, v1

    .line 20
    goto :goto_6e

    .line 21
    :pswitch_14  #0x7
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 23
    aput v0, p1, v1

    .line 25
    goto :goto_6e

    .line 26
    :pswitch_19  #0x6
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->d:I

    .line 28
    int-to-float v0, v0

    .line 29
    aput v0, p1, v1

    .line 31
    goto :goto_6e

    .line 32
    :pswitch_1f  #0x4, 0x5
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->h:I

    .line 34
    shr-int/lit8 v2, v0, 0x18

    .line 36
    and-int/lit16 v2, v2, 0xff

    .line 38
    shr-int/lit8 v3, v0, 0x10

    .line 40
    and-int/lit16 v3, v3, 0xff

    .line 42
    shr-int/lit8 v4, v0, 0x8

    .line 44
    and-int/lit16 v4, v4, 0xff

    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 48
    int-to-float v3, v3

    .line 49
    const/high16 v5, 0x437f0000  # 255.0f

    .line 51
    div-float/2addr v3, v5

    .line 52
    float-to-double v6, v3

    .line 53
    const-wide v8, 0x400199999999999aL  # 2.2

    .line 58
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 61
    move-result-wide v6

    .line 62
    double-to-float v3, v6

    .line 63
    int-to-float v4, v4

    .line 64
    div-float/2addr v4, v5

    .line 65
    float-to-double v6, v4

    .line 66
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 69
    move-result-wide v6

    .line 70
    double-to-float v4, v6

    .line 71
    int-to-float v0, v0

    .line 72
    div-float/2addr v0, v5

    .line 73
    float-to-double v6, v0

    .line 74
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 77
    move-result-wide v6

    .line 78
    double-to-float v0, v6

    .line 79
    aput v3, p1, v1

    .line 81
    const/4 v1, 0x1

    .line 82
    aput v4, p1, v1

    .line 84
    const/4 v1, 0x2

    .line 85
    aput v0, p1, v1

    .line 87
    const/4 v0, 0x3

    .line 88
    int-to-float v1, v2

    .line 89
    div-float/2addr v1, v5

    .line 90
    aput v1, p1, v0

    .line 92
    goto :goto_6e

    .line 93
    :pswitch_5c  #0x3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    const-string v0, "Color does not have a single color to interpolate"

    .line 97
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p1

    .line 101
    :pswitch_64  #0x2
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->g:Z

    .line 103
    if-eqz v0, :cond_6b

    .line 105
    const/high16 v0, 0x3f800000  # 1.0f

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    const/4 v0, 0x0

    .line 109
    :goto_6c
    aput v0, p1, v1

    .line 111
    :goto_6e
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_70
    .packed-switch 0x2
        :pswitch_64  #00000002
        :pswitch_5c  #00000003
        :pswitch_1f  #00000004
        :pswitch_1f  #00000005
        :pswitch_19  #00000006
        :pswitch_14  #00000007
        :pswitch_f  #00000008
    .end packed-switch
.end method

.method public final c()I
    .registers 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$a;->a:[I

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_12

    .line 14
    const/4 v2, 0x5

    .line 15
    if-eq v0, v2, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_12
    return v1
.end method

.method public final f(Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$a;->a:[I

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->c:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    packed-switch v0, :pswitch_data_40

    .line 14
    goto :goto_3f

    .line 15
    :pswitch_e  #0x8
    check-cast p1, Ljava/lang/Float;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    move-result p1

    .line 21
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 23
    goto :goto_3f

    .line 24
    :pswitch_17  #0x7
    check-cast p1, Ljava/lang/Float;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 29
    move-result p1

    .line 30
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->e:F

    .line 32
    goto :goto_3f

    .line 33
    :pswitch_20  #0x4, 0x5
    check-cast p1, Ljava/lang/Integer;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result p1

    .line 39
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->h:I

    .line 41
    goto :goto_3f

    .line 42
    :pswitch_29  #0x3
    check-cast p1, Ljava/lang/String;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->f:Ljava/lang/String;

    .line 46
    goto :goto_3f

    .line 47
    :pswitch_2e  #0x2
    check-cast p1, Ljava/lang/Boolean;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    move-result p1

    .line 53
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->g:Z

    .line 55
    goto :goto_3f

    .line 56
    :pswitch_37  #0x1, 0x6
    check-cast p1, Ljava/lang/Integer;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result p1

    .line 62
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->d:I

    .line 64
    :goto_3f
    return-void

    .line 65
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_37  #00000001
        :pswitch_2e  #00000002
        :pswitch_29  #00000003
        :pswitch_20  #00000004
        :pswitch_20  #00000005
        :pswitch_37  #00000006
        :pswitch_17  #00000007
        :pswitch_e  #00000008
    .end packed-switch
.end method
