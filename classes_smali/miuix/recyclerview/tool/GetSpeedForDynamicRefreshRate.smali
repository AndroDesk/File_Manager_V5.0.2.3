.class public Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;
.super Ljava/lang/Object;
.source "GetSpeedForDynamicRefreshRate.java"


# static fields
.field private static final COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DynamicRefreshRate recy"

.field private static sControlViewHashCode:I = 0x0

.field private static sHasGetProperty:Z = false

.field private static sRefreshRateList:[I

.field private static sRefreshRateSpeedLimits:[I


# instance fields
.field private mCountIndex:I

.field private mCurrentRefreshRate:I

.field private final mDisplay:Landroid/view/Display;

.field private mHasFocus:Z

.field private final mIsEnable:Z

.field private volatile mIsTouch:Z

.field private mNeedAbandon:Z

.field private mOldScrollState:I

.field private mStartTime:J

.field private mTotalDistance:J

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lmiuix/recyclerview/widget/RecyclerView;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    .line 7
    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    .line 9
    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    .line 11
    const-wide/16 v1, -0x1

    .line 13
    iput-wide v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    .line 15
    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    .line 19
    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    .line 21
    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    instance-of v1, v1, Landroid/app/Activity;

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_28

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Landroidx/core/content/a;->d(Landroid/content/Context;)Landroid/view/Display;

    .line 39
    move-result-object v1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move-object v1, v2

    .line 42
    :goto_29
    iput-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v3

    .line 48
    instance-of v3, v3, Landroid/app/Activity;

    .line 50
    if-eqz v3, :cond_3d

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Landroid/app/Activity;

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 61
    move-result-object v2

    .line 62
    :cond_3d
    iput-object v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    .line 64
    invoke-static {}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->getParam()Z

    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4b

    .line 70
    if-eqz v1, :cond_4b

    .line 72
    if-eqz v2, :cond_4b

    .line 74
    const/4 p1, 0x1

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move p1, v0

    .line 77
    :goto_4c
    iput-boolean p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    .line 79
    if-nez p1, :cond_58

    .line 81
    const-string p1, "DynamicRefreshRate recy"

    .line 83
    const-string v0, "dynamic is not enable"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 89
    :cond_58
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 91
    aget p1, p1, v0

    .line 93
    iput p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    .line 95
    return-void
.end method

.method private calculateRefreshRate(I)I
    .registers 9

    .line 1
    sget-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x1

    .line 6
    aget v0, v0, v1

    .line 8
    iget-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eqz v1, :cond_74

    .line 13
    iget-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    .line 15
    if-eqz v1, :cond_11

    .line 17
    goto :goto_74

    .line 18
    :cond_11
    if-nez p1, :cond_14

    .line 20
    return v0

    .line 21
    :cond_14
    iget v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    .line 23
    if-nez v1, :cond_22

    .line 25
    const-wide/16 v3, 0x0

    .line 27
    iput-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    move-result-wide v3

    .line 33
    iput-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    .line 35
    :cond_22
    iget v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 39
    iput v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    .line 41
    iget-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    .line 43
    int-to-long v5, p1

    .line 44
    add-long/2addr v3, v5

    .line 45
    iput-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    .line 47
    const/4 p1, 0x3

    .line 48
    if-ge v1, p1, :cond_32

    .line 50
    return v2

    .line 51
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    move-result-wide v3

    .line 55
    iget-wide v5, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    .line 57
    sub-long/2addr v3, v5

    .line 58
    long-to-float p1, v3

    .line 59
    const/high16 v1, 0x447a0000  # 1000.0f

    .line 61
    div-float/2addr p1, v1

    .line 62
    iget-wide v3, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    .line 64
    long-to-float v1, v3

    .line 65
    div-float/2addr v1, p1

    .line 66
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 69
    move-result p1

    .line 70
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 73
    move-result p1

    .line 74
    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    .line 77
    move v3, v1

    .line 78
    :goto_4d
    sget-object v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 80
    array-length v5, v4

    .line 81
    if-ge v3, v5, :cond_5e

    .line 83
    aget v4, v4, v3

    .line 85
    if-le p1, v4, :cond_5b

    .line 87
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 89
    aget v0, p1, v3

    .line 91
    goto :goto_5e

    .line 92
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    .line 94
    goto :goto_4d

    .line 95
    :cond_5e
    :goto_5e
    iget p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    .line 97
    if-lt v0, p1, :cond_71

    .line 99
    sget-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 101
    array-length v4, v3

    .line 102
    add-int/lit8 v4, v4, -0x1

    .line 104
    aget v4, v3, v4

    .line 106
    if-ne p1, v4, :cond_70

    .line 108
    aget p1, v3, v1

    .line 110
    if-ne v0, p1, :cond_70

    .line 112
    goto :goto_71

    .line 113
    :cond_70
    return v2

    .line 114
    :cond_71
    :goto_71
    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    .line 116
    return v0

    .line 117
    :cond_74
    :goto_74
    return v2
.end method

.method private static getParam()Z
    .registers 10

    .line 1
    const-string v0, ","

    .line 3
    const-string v1, "dynamic params is "

    .line 5
    const-string v2, "DynamicRefreshRate recy"

    .line 7
    sget-boolean v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v3, :cond_16

    .line 13
    sget-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 15
    if-eqz v0, :cond_15

    .line 17
    sget-object v0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 19
    if-eqz v0, :cond_15

    .line 21
    move v4, v5

    .line 22
    :cond_15
    return v4

    .line 23
    :cond_16
    const/4 v3, 0x0

    .line 24
    :try_start_17
    const-string v6, "android.os.SystemProperties"

    .line 26
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    move-result-object v6

    .line 30
    const-string v7, "get"

    .line 32
    new-array v8, v5, [Ljava/lang/Class;

    .line 34
    const-class v9, Ljava/lang/String;

    .line 36
    aput-object v9, v8, v4

    .line 38
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object v6

    .line 42
    new-array v7, v5, [Ljava/lang/Object;

    .line 44
    const-string v8, "ro.vendor.display.dynamic_refresh_rate"

    .line 46
    aput-object v8, v7, v4

    .line 48
    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_35} :catch_ee
    .catchall {:try_start_17 .. :try_end_35} :catchall_ec

    .line 54
    if-nez v6, :cond_53

    .line 56
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 62
    if-eqz v1, :cond_45

    .line 64
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 66
    if-eqz v1, :cond_45

    .line 68
    move v1, v5

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    move v1, v4

    .line 71
    :goto_46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 83
    return v4

    .line 84
    :cond_53
    :try_start_53
    const-string v7, ":"

    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    array-length v7, v6
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_ee
    .catchall {:try_start_53 .. :try_end_5a} :catchall_ec

    .line 91
    const/4 v8, 0x2

    .line 92
    if-eq v7, v8, :cond_79

    .line 94
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-result-object v0

    .line 98
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 100
    if-eqz v1, :cond_6b

    .line 102
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 104
    if-eqz v1, :cond_6b

    .line 106
    move v1, v5

    .line 107
    goto :goto_6c

    .line 108
    :cond_6b
    move v1, v4

    .line 109
    :goto_6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 121
    return v4

    .line 122
    :cond_79
    :try_start_79
    aget-object v7, v6, v4

    .line 124
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 127
    move-result-object v7

    .line 128
    aget-object v6, v6, v5

    .line 130
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    array-length v6, v0

    .line 135
    array-length v8, v7
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_87} :catch_ee
    .catchall {:try_start_79 .. :try_end_87} :catchall_ec

    .line 136
    sub-int/2addr v8, v5

    .line 137
    if-eq v6, v8, :cond_a6

    .line 139
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    move-result-object v0

    .line 143
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 145
    if-eqz v1, :cond_98

    .line 147
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 149
    if-eqz v1, :cond_98

    .line 151
    move v1, v5

    .line 152
    goto :goto_99

    .line 153
    :cond_98
    move v1, v4

    .line 154
    :goto_99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 166
    return v4

    .line 167
    :cond_a6
    :try_start_a6
    array-length v6, v7

    .line 168
    new-array v6, v6, [I

    .line 170
    sput-object v6, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 172
    move v6, v4

    .line 173
    :goto_ac
    array-length v8, v7

    .line 174
    if-ge v6, v8, :cond_bc

    .line 176
    sget-object v8, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 178
    aget-object v9, v7, v6

    .line 180
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 183
    move-result v9

    .line 184
    aput v9, v8, v6

    .line 186
    add-int/lit8 v6, v6, 0x1

    .line 188
    goto :goto_ac

    .line 189
    :cond_bc
    array-length v6, v0

    .line 190
    new-array v6, v6, [I

    .line 192
    sput-object v6, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 194
    move v6, v4

    .line 195
    :goto_c2
    array-length v7, v0

    .line 196
    if-ge v6, v7, :cond_d2

    .line 198
    sget-object v7, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 200
    aget-object v8, v0, v6

    .line 202
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 205
    move-result v8

    .line 206
    aput v8, v7, v6
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_cf} :catch_ee
    .catchall {:try_start_a6 .. :try_end_cf} :catchall_ec

    .line 208
    add-int/lit8 v6, v6, 0x1

    .line 210
    goto :goto_c2

    .line 211
    :cond_d2
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    move-result-object v0

    .line 215
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 217
    if-eqz v1, :cond_df

    .line 219
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 221
    if-eqz v1, :cond_df

    .line 223
    move v4, v5

    .line 224
    :cond_df
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v0

    .line 231
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 236
    return v5

    .line 237
    :catchall_ec
    move-exception v0

    .line 238
    goto :goto_112

    .line 239
    :catch_ee
    move-exception v0

    .line 240
    :try_start_ef
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_ec

    .line 243
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    move-result-object v0

    .line 247
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 249
    if-eqz v1, :cond_100

    .line 251
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 253
    if-eqz v1, :cond_100

    .line 255
    move v1, v5

    .line 256
    goto :goto_101

    .line 257
    :cond_100
    move v1, v4

    .line 258
    :goto_101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object v0

    .line 265
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 270
    sput-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 272
    sput-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 274
    return v4

    .line 275
    :goto_112
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    move-result-object v1

    .line 279
    sget-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 281
    if-eqz v3, :cond_11f

    .line 283
    sget-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 285
    if-eqz v3, :cond_11f

    .line 287
    move v4, v5

    .line 288
    :cond_11f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v1

    .line 295
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 300
    throw v0
.end method

.method private setRefreshRate(IZ)V
    .registers 13

    .line 1
    const-string v0, "DynamicRefreshRate recy"

    .line 3
    iget-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    .line 5
    invoke-virtual {v1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    .line 11
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 14
    move-result-object v2

    .line 15
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 17
    :try_start_10
    array-length v4, v1

    .line 18
    if-gt v3, v4, :cond_9a

    .line 20
    if-gez v3, :cond_17

    .line 22
    goto/16 :goto_9a

    .line 24
    :cond_17
    const/high16 v4, 0x3f800000  # 1.0f

    .line 26
    if-nez p2, :cond_30

    .line 28
    if-eqz v3, :cond_30

    .line 30
    add-int/lit8 v5, v3, -0x1

    .line 32
    aget-object v5, v1, v5

    .line 34
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 37
    move-result v5

    .line 38
    int-to-float v6, p1

    .line 39
    sub-float/2addr v5, v6

    .line 40
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 43
    move-result v5

    .line 44
    cmpg-float v5, v5, v4

    .line 46
    if-gez v5, :cond_30

    .line 48
    return-void

    .line 49
    :cond_30
    array-length v5, v1

    .line 50
    const/4 v6, 0x0

    .line 51
    :goto_32
    if-ge v6, v5, :cond_b4

    .line 53
    aget-object v7, v1, v6

    .line 55
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 58
    move-result v8

    .line 59
    int-to-float v9, p1

    .line 60
    sub-float/2addr v8, v9

    .line 61
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 64
    move-result v8

    .line 65
    cmpl-float v8, v8, v4

    .line 67
    if-lez v8, :cond_47

    .line 69
    add-int/lit8 v6, v6, 0x1

    .line 71
    goto :goto_32

    .line 72
    :cond_47
    if-nez p2, :cond_63

    .line 74
    if-eqz v3, :cond_63

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 79
    move-result p2

    .line 80
    sget v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    .line 82
    if-eq p2, v4, :cond_63

    .line 84
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 87
    move-result p2

    .line 88
    add-int/lit8 v4, v3, -0x1

    .line 90
    aget-object v4, v1, v4

    .line 92
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 95
    move-result v4

    .line 96
    cmpl-float p2, p2, v4

    .line 98
    if-lez p2, :cond_b4

    .line 100
    :cond_63
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 103
    move-result p2

    .line 104
    sput p2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    sget v4, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    .line 113
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v4, " set Refresh rate to: "

    .line 118
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string p1, ", mode is: "

    .line 126
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    .line 132
    move-result p1

    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    .line 146
    move-result p1

    .line 147
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 149
    iget-object p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    .line 151
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_99
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_99} :catch_9b

    .line 154
    goto :goto_b4

    .line 155
    :cond_9a
    :goto_9a
    return-void

    .line 156
    :catch_9b
    const-string p1, "out of bound exception! mode length "

    .line 158
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    move-result-object p1

    .line 162
    array-length p2, v1

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string p2, ", mode id "

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_b4
    :goto_b4
    return-void
.end method


# virtual methods
.method public calculateSpeed(II)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    .line 3
    if-eqz v0, :cond_24

    .line 5
    if-nez p1, :cond_8

    .line 7
    if-eqz p2, :cond_24

    .line 9
    :cond_8
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    .line 11
    if-nez v0, :cond_24

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 16
    move-result p1

    .line 17
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 20
    move-result p2

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->calculateRefreshRate(I)I

    .line 28
    move-result p1

    .line 29
    const/4 p2, -0x1

    .line 30
    if-ne p1, p2, :cond_20

    .line 32
    return-void

    .line 33
    :cond_20
    const/4 p2, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    .line 37
    :cond_24
    return-void
.end method

.method public onFocusChange(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    .line 11
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 13
    const/4 v0, 0x0

    .line 14
    aget p1, p1, v0

    .line 16
    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    .line 19
    return-void
.end method

.method public scrollState(Lmiuix/recyclerview/widget/RecyclerView;I)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    .line 8
    if-nez v0, :cond_3a

    .line 10
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    .line 12
    if-nez v0, :cond_3a

    .line 14
    iget v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_13

    .line 19
    goto :goto_3a

    .line 20
    :cond_13
    iput p2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    .line 22
    const/4 p2, -0x1

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v0, :cond_23

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2f

    .line 36
    :cond_23
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_39

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_39

    .line 48
    :cond_2f
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 50
    array-length p2, p1

    .line 51
    sub-int/2addr p2, v1

    .line 52
    aget p1, p1, p2

    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    .line 58
    :cond_39
    return-void

    .line 59
    :cond_3a
    :goto_3a
    iput p2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    .line 61
    return-void
.end method

.method public touchEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_1f

    .line 14
    iput-boolean v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    .line 16
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 18
    aget p1, p1, v1

    .line 20
    iput p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    .line 22
    iput v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    .line 24
    invoke-direct {p0, p1, v2}, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->setRefreshRate(IZ)V

    .line 27
    iput-boolean v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    .line 29
    iput-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    .line 31
    goto :goto_27

    .line 32
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 35
    move-result p1

    .line 36
    if-ne p1, v2, :cond_27

    .line 38
    iput-boolean v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    .line 40
    :cond_27
    :goto_27
    return-void
.end method
