.class public abstract Lcom/miui/maml/folme/AnimatedProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "AnimatedProperty.java"

# interfaces
.implements Lcom/miui/maml/folme/IAnimatedProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;",
        "Lcom/miui/maml/folme/IAnimatedProperty<",
        "Lcom/miui/maml/elements/AnimatedScreenElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final HEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PIVOT_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PIVOT_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PIVOT_Z:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field public static final PROPERTY_NAME_H:Ljava/lang/String; = "h"

.field public static final PROPERTY_NAME_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final PROPERTY_NAME_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final PROPERTY_NAME_PIVOT_Z:Ljava/lang/String; = "pivotZ"

.field public static final PROPERTY_NAME_ROTATION:Ljava/lang/String; = "rotation"

.field public static final PROPERTY_NAME_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final PROPERTY_NAME_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final PROPERTY_NAME_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final PROPERTY_NAME_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final PROPERTY_NAME_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final PROPERTY_NAME_TINT_COLOR:Ljava/lang/String; = "tintColor"

.field public static final PROPERTY_NAME_W:Ljava/lang/String; = "w"

.field public static final PROPERTY_NAME_X:Ljava/lang/String; = "x"

.field public static final PROPERTY_NAME_Y:Ljava/lang/String; = "y"

.field public static final ROTATION:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final ROTATION_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final ROTATION_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final ROTATION_Z:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final SCALE_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final SCALE_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final WIDTH:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final Y:Lcom/miui/maml/folme/AnimatedProperty;

.field public static sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 31

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    new-instance v0, Lcom/miui/maml/folme/AnimatedProperty$1;

    .line 10
    const-string v1, "x"

    .line 12
    invoke-direct {v0, v1}, Lcom/miui/maml/folme/AnimatedProperty$1;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Lcom/miui/maml/folme/AnimatedProperty;->X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 17
    new-instance v2, Lcom/miui/maml/folme/AnimatedProperty$2;

    .line 19
    const-string v3, "y"

    .line 21
    invoke-direct {v2, v3}, Lcom/miui/maml/folme/AnimatedProperty$2;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v2, Lcom/miui/maml/folme/AnimatedProperty;->Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 26
    new-instance v4, Lcom/miui/maml/folme/AnimatedProperty$3;

    .line 28
    const-string v5, "scaleX"

    .line 30
    invoke-direct {v4, v5}, Lcom/miui/maml/folme/AnimatedProperty$3;-><init>(Ljava/lang/String;)V

    .line 33
    sput-object v4, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 35
    new-instance v6, Lcom/miui/maml/folme/AnimatedProperty$4;

    .line 37
    const-string v7, "scaleY"

    .line 39
    invoke-direct {v6, v7}, Lcom/miui/maml/folme/AnimatedProperty$4;-><init>(Ljava/lang/String;)V

    .line 42
    sput-object v6, Lcom/miui/maml/folme/AnimatedProperty;->SCALE_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 44
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$5;

    .line 46
    const-string v9, "rotation"

    .line 48
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$5;-><init>(Ljava/lang/String;)V

    .line 51
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION:Lcom/miui/maml/folme/AnimatedProperty;

    .line 53
    new-instance v10, Lcom/miui/maml/folme/AnimatedProperty$6;

    .line 55
    const-string v11, "rotationX"

    .line 57
    invoke-direct {v10, v11}, Lcom/miui/maml/folme/AnimatedProperty$6;-><init>(Ljava/lang/String;)V

    .line 60
    sput-object v10, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 62
    new-instance v12, Lcom/miui/maml/folme/AnimatedProperty$7;

    .line 64
    const-string v13, "rotationY"

    .line 66
    invoke-direct {v12, v13}, Lcom/miui/maml/folme/AnimatedProperty$7;-><init>(Ljava/lang/String;)V

    .line 69
    sput-object v12, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 71
    new-instance v14, Lcom/miui/maml/folme/AnimatedProperty$8;

    .line 73
    const-string v15, "rotationZ"

    .line 75
    invoke-direct {v14, v15}, Lcom/miui/maml/folme/AnimatedProperty$8;-><init>(Ljava/lang/String;)V

    .line 78
    sput-object v14, Lcom/miui/maml/folme/AnimatedProperty;->ROTATION_Z:Lcom/miui/maml/folme/AnimatedProperty;

    .line 80
    move-object/from16 v16, v14

    .line 82
    new-instance v14, Lcom/miui/maml/folme/AnimatedProperty$9;

    .line 84
    move-object/from16 v17, v15

    .line 86
    const-string v15, "h"

    .line 88
    invoke-direct {v14, v15}, Lcom/miui/maml/folme/AnimatedProperty$9;-><init>(Ljava/lang/String;)V

    .line 91
    sput-object v14, Lcom/miui/maml/folme/AnimatedProperty;->HEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    .line 93
    move-object/from16 v18, v12

    .line 95
    new-instance v12, Lcom/miui/maml/folme/AnimatedProperty$10;

    .line 97
    move-object/from16 v19, v13

    .line 99
    const-string v13, "w"

    .line 101
    invoke-direct {v12, v13}, Lcom/miui/maml/folme/AnimatedProperty$10;-><init>(Ljava/lang/String;)V

    .line 104
    sput-object v12, Lcom/miui/maml/folme/AnimatedProperty;->WIDTH:Lcom/miui/maml/folme/AnimatedProperty;

    .line 106
    move-object/from16 v20, v10

    .line 108
    new-instance v10, Lcom/miui/maml/folme/AnimatedProperty$11;

    .line 110
    move-object/from16 v21, v11

    .line 112
    const-string v11, "alpha"

    .line 114
    invoke-direct {v10, v11}, Lcom/miui/maml/folme/AnimatedProperty$11;-><init>(Ljava/lang/String;)V

    .line 117
    sput-object v10, Lcom/miui/maml/folme/AnimatedProperty;->ALPHA:Lcom/miui/maml/folme/AnimatedProperty;

    .line 119
    move-object/from16 v22, v8

    .line 121
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$12;

    .line 123
    move-object/from16 v23, v9

    .line 125
    const-string v9, "tintColor"

    .line 127
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$12;-><init>(Ljava/lang/String;)V

    .line 130
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->TINT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 132
    move-object/from16 v24, v8

    .line 134
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$13;

    .line 136
    move-object/from16 v25, v9

    .line 138
    const-string v9, "pivotX"

    .line 140
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$13;-><init>(Ljava/lang/String;)V

    .line 143
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 145
    move-object/from16 v26, v8

    .line 147
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$14;

    .line 149
    move-object/from16 v27, v9

    .line 151
    const-string v9, "pivotY"

    .line 153
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$14;-><init>(Ljava/lang/String;)V

    .line 156
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 158
    move-object/from16 v28, v8

    .line 160
    new-instance v8, Lcom/miui/maml/folme/AnimatedProperty$15;

    .line 162
    move-object/from16 v29, v9

    .line 164
    const-string v9, "pivotZ"

    .line 166
    invoke-direct {v8, v9}, Lcom/miui/maml/folme/AnimatedProperty$15;-><init>(Ljava/lang/String;)V

    .line 169
    sput-object v8, Lcom/miui/maml/folme/AnimatedProperty;->PIVOT_Z:Lcom/miui/maml/folme/AnimatedProperty;

    .line 171
    move-object/from16 v30, v8

    .line 173
    sget-object v8, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 175
    invoke-virtual {v8, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 185
    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 190
    invoke-virtual {v0, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 195
    invoke-virtual {v0, v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    invoke-virtual {v0, v15, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 205
    invoke-virtual {v0, v13, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 210
    move-object/from16 v1, v22

    .line 212
    move-object/from16 v2, v23

    .line 214
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 219
    move-object/from16 v1, v20

    .line 221
    move-object/from16 v2, v21

    .line 223
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 228
    move-object/from16 v1, v18

    .line 230
    move-object/from16 v2, v19

    .line 232
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 237
    move-object/from16 v1, v16

    .line 239
    move-object/from16 v2, v17

    .line 241
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 246
    move-object/from16 v1, v24

    .line 248
    move-object/from16 v2, v25

    .line 250
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 255
    move-object/from16 v1, v26

    .line 257
    move-object/from16 v2, v27

    .line 259
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 264
    move-object/from16 v1, v28

    .line 266
    move-object/from16 v2, v29

    .line 268
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 273
    move-object/from16 v1, v30

    .line 275
    invoke-virtual {v0, v9, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;
    .registers 2

    .line 1
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/animation/property/FloatProperty;

    .line 9
    return-object p0
.end method
