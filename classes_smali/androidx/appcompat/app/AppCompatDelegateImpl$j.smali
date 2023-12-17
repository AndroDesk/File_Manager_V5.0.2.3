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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/z;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->c:Landroidx/appcompat/app/z;

    return-void
.end method


# virtual methods
.method public final b()Landroid/content/IntentFilter;
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()I
    .registers 22

    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->c:Landroidx/appcompat/app/z;

    iget-object v3, v2, Landroidx/appcompat/app/z;->c:Landroidx/appcompat/app/z$a;

    iget-wide v4, v3, Landroidx/appcompat/app/z$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_14

    move v0, v5

    goto :goto_15

    :cond_14
    move v0, v4

    :goto_15
    if-eqz v0, :cond_1b

    iget-boolean v0, v3, Landroidx/appcompat/app/z$a;->a:Z

    goto/16 :goto_10d

    :cond_1b
    iget-object v0, v2, Landroidx/appcompat/app/z;->a:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v6}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v6, "Failed to get last known location"

    const-string v7, "TwilightManager"

    const/4 v8, 0x0

    if-nez v0, :cond_42

    const-string v0, "network"

    :try_start_2c
    iget-object v9, v2, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3f

    iget-object v9, v2, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_3b

    goto :goto_40

    :catch_3b
    move-exception v0

    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    move-object v0, v8

    :goto_40
    move-object v9, v0

    goto :goto_43

    :cond_42
    move-object v9, v8

    :goto_43
    iget-object v0, v2, Landroidx/appcompat/app/z;->a:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v10}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "gps"

    :try_start_4f
    iget-object v10, v2, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_63

    iget-object v10, v2, Landroidx/appcompat/app/z;->b:Landroid/location/LocationManager;

    invoke-virtual {v10, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5d} :catch_5f

    move-object v8, v0

    goto :goto_63

    :catch_5f
    move-exception v0

    invoke-static {v7, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_63
    :goto_63
    if-eqz v8, :cond_74

    if-eqz v9, :cond_74

    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-lez v0, :cond_77

    goto :goto_76

    :cond_74
    if-eqz v8, :cond_77

    :goto_76
    move-object v9, v8

    :cond_77
    if-eqz v9, :cond_f5

    iget-object v0, v2, Landroidx/appcompat/app/z;->c:Landroidx/appcompat/app/z$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v2, Landroidx/appcompat/app/y;->d:Landroidx/appcompat/app/y;

    if-nez v2, :cond_8a

    new-instance v2, Landroidx/appcompat/app/y;

    invoke-direct {v2}, Landroidx/appcompat/app/y;-><init>()V

    sput-object v2, Landroidx/appcompat/app/y;->d:Landroidx/appcompat/app/y;

    :cond_8a
    sget-object v2, Landroidx/appcompat/app/y;->d:Landroidx/appcompat/app/y;

    const-wide/32 v17, 0x5265c00

    sub-long v15, v6, v17

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    move-object v10, v2

    invoke-virtual/range {v10 .. v16}, Landroidx/appcompat/app/y;->a(DDJ)V

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    move-wide v15, v6

    invoke-virtual/range {v10 .. v16}, Landroidx/appcompat/app/y;->a(DDJ)V

    iget v8, v2, Landroidx/appcompat/app/y;->c:I

    if-ne v8, v5, :cond_ae

    move v4, v5

    :cond_ae
    iget-wide v13, v2, Landroidx/appcompat/app/y;->b:J

    iget-wide v11, v2, Landroidx/appcompat/app/y;->a:J

    add-long v15, v6, v17

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-object v10, v2

    move-wide/from16 v19, v11

    move-wide/from16 v11, v17

    move-wide/from16 v17, v13

    move-wide v13, v8

    invoke-virtual/range {v10 .. v16}, Landroidx/appcompat/app/y;->a(DDJ)V

    iget-wide v8, v2, Landroidx/appcompat/app/y;->b:J

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    cmp-long v2, v17, v12

    if-eqz v2, :cond_ea

    cmp-long v2, v19, v12

    if-nez v2, :cond_d6

    goto :goto_ea

    :cond_d6
    cmp-long v2, v6, v19

    if-lez v2, :cond_dc

    add-long/2addr v8, v10

    goto :goto_e5

    :cond_dc
    cmp-long v2, v6, v17

    if-lez v2, :cond_e3

    add-long v8, v19, v10

    goto :goto_e5

    :cond_e3
    add-long v8, v17, v10

    :goto_e5
    const-wide/32 v6, 0xea60

    add-long/2addr v8, v6

    goto :goto_ee

    :cond_ea
    :goto_ea
    const-wide/32 v8, 0x2932e00

    add-long/2addr v8, v6

    :goto_ee
    iput-boolean v4, v0, Landroidx/appcompat/app/z$a;->a:Z

    iput-wide v8, v0, Landroidx/appcompat/app/z$a;->b:J

    iget-boolean v0, v3, Landroidx/appcompat/app/z$a;->a:Z

    goto :goto_10d

    :cond_f5
    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_10b

    const/16 v2, 0x16

    if-lt v0, v2, :cond_10c

    :cond_10b
    move v4, v5

    :cond_10c
    move v0, v4

    :goto_10d
    if-eqz v0, :cond_110

    const/4 v5, 0x2

    :cond_110
    return v5
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$j;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->A(ZZ)Z

    return-void
.end method
