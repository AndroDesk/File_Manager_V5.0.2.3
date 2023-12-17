.class Lcom/android/fileexplorer/util/MiDriveUtils$CheckAppInfoTask;
.super Ljava/lang/Object;
.source "MiDriveUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/util/MiDriveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckAppInfoTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/util/MiDriveUtils$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/MiDriveUtils$CheckAppInfoTask;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    :try_start_5
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->getIMEI()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/android/fileexplorer/util/StringUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    .line 14
    goto :goto_19

    .line 15
    :catch_e
    invoke-static {}, Lcom/android/fileexplorer/util/MiDriveUtils;->access$200()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "get device id failed"

    .line 21
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, ""

    .line 26
    :goto_19
    const-string v2, "imei"

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v2, "clientId"

    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    const-string v2, "sdk"

    .line 44
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 49
    const-string v2, "os"

    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "ro.miui.ui.version.name"

    .line 56
    invoke-static {v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    const-string v2, "miuiBigVersionName"

    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 67
    const-string v2, "model"

    .line 69
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "pageRef"

    .line 74
    const-string v2, "com.miui.newmidrive"

    .line 76
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "appInfoLevel"

    .line 81
    const-string v3, "1"

    .line 83
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "ref"

    .line 88
    const-string v3, "file explorer check"

    .line 90
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "la"

    .line 95
    const-string v3, "zh"

    .line 97
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "lo"

    .line 102
    const-string v3, "CN"

    .line 104
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v3, "https://app.market.xiaomi.com/apm/app/package/"

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "?"

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v0}, Lcom/android/fileexplorer/util/MiDriveUtils;->access$300(Ljava/util/Map;)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/android/fileexplorer/util/HttpsUtil;->getForm(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_97

    .line 151
    return-void

    .line 152
    :cond_97
    :try_start_97
    new-instance v1, Lorg/json/JSONObject;

    .line 154
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    const-string v0, "app"

    .line 159
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 162
    move-result-object v0

    .line 163
    const-string v1, "appId"

    .line 165
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_ac

    .line 171
    const/4 v0, 0x1

    .line 172
    goto :goto_ad

    .line 173
    :cond_ac
    const/4 v0, 0x0

    .line 174
    :goto_ad
    invoke-static {v0}, Lcom/android/fileexplorer/util/MiDriveUtils;->access$402(Z)Z

    .line 177
    invoke-static {}, Lcom/android/fileexplorer/util/MiDriveUtils;->access$200()Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    const-string v2, "in market: "

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {}, Lcom/android/fileexplorer/util/MiDriveUtils;->access$400()Z

    .line 194
    move-result v2

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_cc} :catch_cd

    .line 205
    goto :goto_d1

    .line 206
    :catch_cd
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    :goto_d1
    return-void
.end method
