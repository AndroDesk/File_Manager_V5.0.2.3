.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$j;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$i;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final c:Landroidx/appcompat/app/z;

.field public final synthetic d:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/z;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 6
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->c:Landroidx/appcompat/app/z;

    .line 8
    return-void
.end method


# virtual methods
.method public final b()Landroid/content/IntentFilter;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.intent.action.TIME_SET"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string v1, "android.intent.action.TIME_TICK"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    return-object v0
.end method

.method public final c()I
    .registers 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->c:Landroidx/appcompat/app/z;

    .line 5
    iget-object v3, v2, Landroidx/appcompat/app/z;->c:Landroidx/appcompat/app/z$a;

    .line 7
    iget-wide v4, v3, Landroidx/appcompat/app/z$a;->b:J

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v6

    .line 13
    cmp-long v0, v4, v6

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-lez v0, :cond_14

    .line 19
    move v0, v5

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v0, v4

    .line 22
    :goto_15
    if-eqz v0, :cond_1b

    .line 24
    iget-boolean v0, v3, Landroidx/appcompat/app/z$a;->a:Z

    .line 26
    goto/16 :goto_10d

    .line 28
    :cond_1b
    iget-object v0, v2, Landroidx/appcompat/app/z;->a:Landroid/content/Context;

    .line 30
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 32
    invoke-static {v0, v6}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 35
    move-result v0

    .line 36
    const-string v6, "Failed to get last known location"

    .line 38
    const-string v7, "TwilightManager"

    .line 40
    const/4 v8, 0x0

    .line 41
    if-nez v0, :cond_42

    .line 43
    const-string v0, "network"

    .line 45
    :try_start_2c
    iget-object v9, v2, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    .line 47
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 50
    move-result v9

    .line 51
    if-eqz v9, :cond_3f

    .line 53
    iget-object v9, v2, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    .line 55
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 58
    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_3b

    .line 59
    goto :goto_40

    .line 60
    :catch_3b
    move-exception v0

    .line 61
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :cond_3f
    move-object v0, v8

    .line 65
    :goto_40
    move-object v9, v0

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move-object v9, v8

    .line 68
    :goto_43
    iget-object v0, v2, Landroidx/appcompat/app/z;->a:Landroid/content/Context;

    .line 70
    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    .line 72
    invoke-static {v0, v10}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_63

    .line 78
    const-string v0, "gps"

    .line 80
    :try_start_4f
    iget-object v10, v2, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    .line 82
    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 85
    move-result v10

    .line 86
    if-eqz v10, :cond_63

    .line 88
    iget-object v10, v2, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    .line 90
    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 93
    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5d} :catch_5f

    .line 94
    move-object v8, v0

    .line 95
    goto :goto_63

    .line 96
    :catch_5f
    move-exception v0

    .line 97
    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_63
    :goto_63
    if-eqz v8, :cond_74

    .line 102
    if-eqz v9, :cond_74

    .line 104
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    .line 107
    move-result-wide v10

    .line 108
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    .line 111
    move-result-wide v12

    .line 112
    cmp-long v0, v10, v12

    .line 114
    if-lez v0, :cond_77

    .line 116
    goto :goto_76

    .line 117
    :cond_74
    if-eqz v8, :cond_77

    .line 119
    :goto_76
    move-object v9, v8

    .line 120
    :cond_77
    if-eqz v9, :cond_f5

    .line 122
    iget-object v0, v2, Landroidx/appcompat/app/z;->c:Landroidx/appcompat/app/z$a;

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    move-result-wide v6

    .line 128
    sget-object v2, Landroidx/appcompat/app/y;->d:Landroidx/appcompat/app/y;

    .line 130
    if-nez v2, :cond_8a

    .line 132
    new-instance v2, Landroidx/appcompat/app/y;

    .line 134
    invoke-direct {v2}, Landroidx/appcompat/app/y;-><init>()V

    .line 137
    sput-object v2, Landroidx/appcompat/app/y;->d:Landroidx/appcompat/app/y;

    .line 139
    :cond_8a
    sget-object v2, Landroidx/appcompat/app/y;->d:Landroidx/appcompat/app/y;

    .line 141
    const-wide/32 v17, 0x5265c00

    .line 144
    sub-long v15, v6, v17

    .line 146
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 149
    move-result-wide v11

    .line 150
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 153
    move-result-wide v13

    .line 154
    move-object v10, v2

    .line 155
    invoke-virtual/range {v10 .. v16}, Landroidx/appcompat/app/y;->a(DDJ)V

    .line 158
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 161
    move-result-wide v11

    .line 162
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 165
    move-result-wide v13

    .line 166
    move-wide v15, v6

    .line 167
    invoke-virtual/range {v10 .. v16}, Landroidx/appcompat/app/y;->a(DDJ)V

    .line 170
    iget v8, v2, Landroidx/appcompat/app/y;->c:I

    .line 172
    if-ne v8, v5, :cond_ae

    .line 174
    move v4, v5

    .line 175
    :cond_ae
    iget-wide v13, v2, Landroidx/appcompat/app/y;->b:J

    .line 177
    iget-wide v11, v2, Landroidx/appcompat/app/y;->a:J

    .line 179
    add-long v15, v6, v17

    .line 181
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    .line 184
    move-result-wide v17

    .line 185
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    .line 188
    move-result-wide v8

    .line 189
    move-object v10, v2

    .line 190
    move-wide/from16 v19, v11

    .line 192
    move-wide/from16 v11, v17

    .line 194
    move-wide/from16 v17, v13

    .line 196
    move-wide v13, v8

    .line 197
    invoke-virtual/range {v10 .. v16}, Landroidx/appcompat/app/y;->a(DDJ)V

    .line 200
    iget-wide v8, v2, Landroidx/appcompat/app/y;->b:J

    .line 202
    const-wide/16 v10, 0x0

    .line 204
    const-wide/16 v12, -0x1

    .line 206
    cmp-long v2, v17, v12

    .line 208
    if-eqz v2, :cond_ea

    .line 210
    cmp-long v2, v19, v12

    .line 212
    if-nez v2, :cond_d6

    .line 214
    goto :goto_ea

    .line 215
    :cond_d6
    cmp-long v2, v6, v19

    .line 217
    if-lez v2, :cond_dc

    .line 219
    add-long/2addr v8, v10

    .line 220
    goto :goto_e5

    .line 221
    :cond_dc
    cmp-long v2, v6, v17

    .line 223
    if-lez v2, :cond_e3

    .line 225
    add-long v8, v19, v10

    .line 227
    goto :goto_e5

    .line 228
    :cond_e3
    add-long v8, v17, v10

    .line 230
    :goto_e5
    const-wide/32 v6, 0xea60

    .line 233
    add-long/2addr v8, v6

    .line 234
    goto :goto_ee

    .line 235
    :cond_ea
    :goto_ea
    const-wide/32 v8, 0x2932e00

    .line 238
    add-long/2addr v8, v6

    .line 239
    :goto_ee
    iput-boolean v4, v0, Landroidx/appcompat/app/z$a;->a:Z

    .line 241
    iput-wide v8, v0, Landroidx/appcompat/app/z$a;->b:J

    .line 243
    iget-boolean v0, v3, Landroidx/appcompat/app/z$a;->a:Z

    .line 245
    goto :goto_10d

    .line 246
    :cond_f5
    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 248
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 254
    move-result-object v0

    .line 255
    const/16 v2, 0xb

    .line 257
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 260
    move-result v0

    .line 261
    const/4 v2, 0x6

    .line 262
    if-lt v0, v2, :cond_10b

    .line 264
    const/16 v2, 0x16

    .line 266
    if-lt v0, v2, :cond_10c

    .line 268
    :cond_10b
    move v4, v5

    .line 269
    :cond_10c
    move v0, v4

    .line 270
    :goto_10d
    if-eqz v0, :cond_110

    .line 272
    const/4 v5, 0x2

    .line 273
    :cond_110
    return v5
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->A(ZZ)Z

    .line 7
    return-void
.end method
