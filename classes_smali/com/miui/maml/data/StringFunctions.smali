.class public Lcom/miui/maml/data/StringFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/StringFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lcom/miui/maml/data/StringFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 6
    return-void
.end method

.method public static load()V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 3
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 9
    const-string v1, "strToLowerCase"

    .line 11
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 14
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 16
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 21
    const-string v1, "strToUpperCase"

    .line 23
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 26
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 28
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 33
    const-string v1, "strTrim"

    .line 35
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 38
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 40
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 42
    const/4 v3, 0x3

    .line 43
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 46
    const-string v1, "strReplace"

    .line 48
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 51
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 53
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 55
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 58
    const-string v1, "strReplaceAll"

    .line 60
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 63
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 65
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 67
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 70
    const-string v1, "strReplaceFirst"

    .line 72
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 75
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 77
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 79
    const/4 v3, 0x2

    .line 80
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 83
    const-string v1, "strContains"

    .line 85
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 88
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 90
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 92
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 95
    const-string v1, "strStartsWith"

    .line 97
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 100
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 102
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 104
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 107
    const-string v1, "strEndsWith"

    .line 109
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 112
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 114
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 116
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 119
    const-string v1, "strIsEmpty"

    .line 121
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 124
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 126
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 128
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 131
    const-string v1, "strMatches"

    .line 133
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 136
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 138
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 140
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 143
    const-string v1, "strIndexOf"

    .line 145
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 148
    new-instance v0, Lcom/miui/maml/data/StringFunctions;

    .line 150
    sget-object v1, Lcom/miui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 152
    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    .line 155
    const-string v1, "strLastIndexOf"

    .line 157
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 160
    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .registers 12

    .line 1
    sget-object v0, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v1, v0, v1

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    packed-switch v1, :pswitch_data_bc

    .line 16
    const/4 p2, 0x0

    .line 17
    aget-object p2, p1, p2

    .line 19
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    move-result v1

    .line 29
    aget v1, v0, v1

    .line 31
    const/4 v4, 0x7

    .line 32
    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    .line 34
    if-eq v1, v4, :cond_b2

    .line 36
    const/4 v1, 0x1

    .line 37
    aget-object p1, p1, v1

    .line 39
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v1

    .line 49
    aget v0, v0, v1

    .line 51
    const-wide/high16 v7, -0x4010000000000000L  # -1.0

    .line 53
    const-string v1, "Expression"

    .line 55
    packed-switch v0, :pswitch_data_cc

    .line 58
    const-string p1, "fail to evalute FunctionExpression, invalid function: "

    .line 60
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-wide v2

    .line 81
    :pswitch_50  #0x8, 0x9, 0xa, 0xb, 0xc, 0xd
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/StringFunctions;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1, v2, v3}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    .line 88
    move-result-wide p1

    .line 89
    return-wide p1

    .line 90
    :pswitch_59  #0x6
    if-eqz p2, :cond_62

    .line 92
    if-eqz p1, :cond_62

    .line 94
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 97
    move-result p1

    .line 98
    int-to-double v7, p1

    .line 99
    :cond_62
    return-wide v7

    .line 100
    :pswitch_63  #0x5
    if-eqz p2, :cond_6c

    .line 102
    if-eqz p1, :cond_6c

    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 107
    move-result p1

    .line 108
    int-to-double v7, p1

    .line 109
    :cond_6c
    return-wide v7

    .line 110
    :pswitch_6d  #0x4
    if-eqz p2, :cond_8d

    .line 112
    if-eqz p1, :cond_8d

    .line 114
    :try_start_71
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 117
    move-result p1
    :try_end_75
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_71 .. :try_end_75} :catch_79

    .line 118
    if-eqz p1, :cond_8d

    .line 120
    move-wide v2, v5

    .line 121
    goto :goto_8d

    .line 122
    :catch_79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v0, "invaid pattern of matches: "

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_8d
    :goto_8d
    return-wide v2

    .line 143
    :pswitch_8e  #0x3
    if-eqz p2, :cond_99

    .line 145
    if-eqz p1, :cond_99

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_99

    .line 153
    move-wide v2, v5

    .line 154
    :cond_99
    return-wide v2

    .line 155
    :pswitch_9a  #0x2
    if-eqz p2, :cond_a5

    .line 157
    if-eqz p1, :cond_a5

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_a5

    .line 165
    move-wide v2, v5

    .line 166
    :cond_a5
    return-wide v2

    .line 167
    :pswitch_a6  #0x1
    if-eqz p2, :cond_b1

    .line 169
    if-eqz p1, :cond_b1

    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_b1

    .line 177
    move-wide v2, v5

    .line 178
    :cond_b1
    return-wide v2

    .line 179
    :cond_b2
    if-eqz p2, :cond_ba

    .line 181
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_bb

    .line 187
    :cond_ba
    move-wide v2, v5

    .line 188
    :cond_bb
    return-wide v2

    .line 189
    :pswitch_data_bc
    .packed-switch 0x8
        :pswitch_50  #00000008
        :pswitch_50  #00000009
        :pswitch_50  #0000000a
        :pswitch_50  #0000000b
        :pswitch_50  #0000000c
        :pswitch_50  #0000000d
    .end packed-switch

    .line 205
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_a6  #00000001
        :pswitch_9a  #00000002
        :pswitch_8e  #00000003
        :pswitch_6d  #00000004
        :pswitch_63  #00000005
        :pswitch_59  #00000006
    .end packed-switch
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .registers 7

    .line 1
    sget-object v0, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    .line 3
    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v1, v0, v1

    .line 11
    packed-switch v1, :pswitch_data_ac

    .line 14
    const/4 p2, 0x0

    .line 15
    aget-object p2, p1, p2

    .line 17
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p2, :cond_21

    .line 24
    return-object v1

    .line 25
    :pswitch_18  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/StringFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 28
    move-result-wide p1

    .line 29
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_21
    iget-object v2, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 39
    move-result v2

    .line 40
    aget v2, v0, v2

    .line 42
    packed-switch v2, :pswitch_data_be

    .line 45
    const/4 v2, 0x1

    .line 46
    aget-object v2, p1, v2

    .line 48
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x2

    .line 53
    aget-object p1, p1, v3

    .line 55
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    if-eqz v2, :cond_ab

    .line 61
    if-nez p1, :cond_4e

    .line 63
    goto :goto_ab

    .line 64
    :pswitch_3f  #0xd
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_44  #0xc
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :pswitch_49  #0xb
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_4e
    iget-object v3, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 81
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 84
    move-result v3

    .line 85
    aget v0, v0, v3

    .line 87
    const-string v3, "Expression"

    .line 89
    packed-switch v0, :pswitch_data_c8

    .line 92
    const-string p1, "fail to evaluteStr FunctionExpression, invalid function: "

    .line 94
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v1

    .line 115
    :pswitch_72  #0xa
    :try_start_72
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p1
    :try_end_76
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_72 .. :try_end_76} :catch_77

    .line 119
    return-object p1

    .line 120
    :catch_77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v0, "invaid pattern of replaceFirst:"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object p2

    .line 141
    :pswitch_8c  #0x9
    :try_start_8c
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object p1
    :try_end_90
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_8c .. :try_end_90} :catch_91

    .line 145
    return-object p1

    .line 146
    :catch_91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    const-string v0, "invaid pattern of replaceAll: "

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object p2

    .line 167
    :pswitch_a6  #0x8
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :cond_ab
    :goto_ab
    return-object p2

    .line 173
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_18  #00000002
        :pswitch_18  #00000003
        :pswitch_18  #00000004
        :pswitch_18  #00000005
        :pswitch_18  #00000006
        :pswitch_18  #00000007
    .end packed-switch

    .line 191
    :pswitch_data_be
    .packed-switch 0xb
        :pswitch_49  #0000000b
        :pswitch_44  #0000000c
        :pswitch_3f  #0000000d
    .end packed-switch

    .line 201
    :pswitch_data_c8
    .packed-switch 0x8
        :pswitch_a6  #00000008
        :pswitch_8c  #00000009
        :pswitch_72  #0000000a
    .end packed-switch
.end method

.method public reset()V
    .registers 1

    return-void
.end method
