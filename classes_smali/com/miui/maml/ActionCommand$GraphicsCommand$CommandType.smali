.class final enum Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$GraphicsCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

.field public static final enum SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    .line 1
    new-instance v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 3
    const-string v1, "INVALID"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 11
    new-instance v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 13
    const-string v3, "BEGIN_FILL"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 21
    new-instance v3, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 23
    const-string v5, "BEGIN_GRADIENT_FILL"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->BEGIN_GRADIENT_FILL:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 31
    new-instance v5, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 33
    const-string v7, "CREATE_GRADIENT_BOX"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CREATE_GRADIENT_BOX:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 41
    new-instance v7, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 43
    const-string v9, "CURVE_TO"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 51
    new-instance v9, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 53
    const-string v11, "CUBIC_CURVE_TO"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->CUBIC_CURVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 61
    new-instance v11, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 63
    const-string v13, "DRAW_CIRCLE"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_CIRCLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 71
    new-instance v13, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 73
    const-string v15, "DRAW_ELLIPSE"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ELLIPSE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 81
    new-instance v15, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 83
    const-string v14, "DRAW_RECT"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 92
    new-instance v14, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 94
    const-string v12, "DRAW_ROUND_RECT"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->DRAW_ROUND_RECT:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 103
    new-instance v12, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 105
    const-string v10, "LINE_GRADIENT_STYLE"

    .line 107
    const/16 v8, 0xa

    .line 109
    invoke-direct {v12, v10, v8}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v12, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_GRADIENT_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 114
    new-instance v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 116
    const-string v8, "LINE_STYLE"

    .line 118
    const/16 v6, 0xb

    .line 120
    invoke-direct {v10, v8, v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v10, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_STYLE:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 125
    new-instance v8, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 127
    const-string v6, "LINE_TO"

    .line 129
    const/16 v4, 0xc

    .line 131
    invoke-direct {v8, v6, v4}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 134
    sput-object v8, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->LINE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 136
    new-instance v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 138
    const-string v4, "MOVE_TO"

    .line 140
    const/16 v2, 0xd

    .line 142
    invoke-direct {v6, v4, v2}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v6, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->MOVE_TO:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 147
    new-instance v4, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 149
    const-string v2, "SET_RENDER_LISTENER"

    .line 151
    move-object/from16 v17, v6

    .line 153
    const/16 v6, 0xe

    .line 155
    invoke-direct {v4, v2, v6}, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v4, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->SET_RENDER_LISTENER:Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 160
    const/16 v2, 0xf

    .line 162
    new-array v2, v2, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 164
    const/16 v16, 0x0

    .line 166
    aput-object v0, v2, v16

    .line 168
    const/4 v0, 0x1

    .line 169
    aput-object v1, v2, v0

    .line 171
    const/4 v0, 0x2

    .line 172
    aput-object v3, v2, v0

    .line 174
    const/4 v0, 0x3

    .line 175
    aput-object v5, v2, v0

    .line 177
    const/4 v0, 0x4

    .line 178
    aput-object v7, v2, v0

    .line 180
    const/4 v0, 0x5

    .line 181
    aput-object v9, v2, v0

    .line 183
    const/4 v0, 0x6

    .line 184
    aput-object v11, v2, v0

    .line 186
    const/4 v0, 0x7

    .line 187
    aput-object v13, v2, v0

    .line 189
    const/16 v0, 0x8

    .line 191
    aput-object v15, v2, v0

    .line 193
    const/16 v0, 0x9

    .line 195
    aput-object v14, v2, v0

    .line 197
    const/16 v0, 0xa

    .line 199
    aput-object v12, v2, v0

    .line 201
    const/16 v0, 0xb

    .line 203
    aput-object v10, v2, v0

    .line 205
    const/16 v0, 0xc

    .line 207
    aput-object v8, v2, v0

    .line 209
    const/16 v0, 0xd

    .line 211
    aput-object v17, v2, v0

    .line 213
    aput-object v4, v2, v6

    .line 215
    sput-object v2, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 217
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    .registers 2

    .line 1
    const-class v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 3
    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/ActionCommand$GraphicsCommand$CommandType;

    .line 9
    return-object v0
.end method
