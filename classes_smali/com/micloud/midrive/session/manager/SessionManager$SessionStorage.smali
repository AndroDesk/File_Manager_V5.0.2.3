.class public Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/micloud/midrive/session/params/SessionExtrasHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionStorage"
.end annotation


# static fields
.field private static final SP_KEY_EXTRAS:Ljava/lang/String; = "key_extras_"

.field private static final SP_KEY_SESSION_PARAMS:Ljava/lang/String; = "key_session_params"

.field private static final SP_NAME_SESSION_NAME:Ljava/lang/String; = "sp_session_name_"


# instance fields
.field private mSessionSharedPrefsName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/micloud/midrive/session/manager/SessionManager;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/session/manager/SessionManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->mSessionSharedPrefsName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method private changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "key_extras_"

    .line 3
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->mSessionSharedPrefsName:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method


# virtual methods
.method public clearSessionParams(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    return-void
.end method

.method public createSessionParamsFromStorage(Landroid/content/Context;)Lcom/micloud/midrive/session/params/SessionParams;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "key_session_params"

    .line 7
    const-string v1, ""

    .line 9
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_19

    .line 19
    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    .line 21
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SessionParams;

    .line 24
    move-result-object p1
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_1b

    .line 25
    return-object p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    throw v0
.end method

.method public getBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getIntExtra(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getLongExtra(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public getStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "sp_session_name_"

    .line 3
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->mSessionSharedPrefsName:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public putBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method public putIntExtra(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method public putLongExtra(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method public putStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method public saveSessionParamsIfNeeded(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/micloud/midrive/session/params/SessionParams;->toJsonObject()Lorg/json/JSONObject;

    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_1b

    .line 7
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    const-string v0, "key_session_params"

    .line 21
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    :cond_1b
    return-void
.end method
