.class Lnet/gree/unitywebview/CWebViewPlugin$3;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->Destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lnet/gree/unitywebview/CWebViewPlugin;

    .prologue
    .line 203
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$3;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$3;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$3;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    # getter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$3;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    const/4 v1, 0x0

    # setter for: Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    goto :goto_0
.end method
